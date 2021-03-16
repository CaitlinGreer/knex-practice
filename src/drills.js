require('dotenv').config()
const knex = require('knex')

const knexInstance = knex({
    client: 'pg',
    connection: process.env.DB_URL
})

function searchByItemName(searchTerm){
    knexInstance
        .select('*')
        .from('shopping_list')
        .where('name', 'ILIKE', `%${searchTerm}`)
        .then(result => {
            console.log('Search Term:', { searchTerm } )
            console.log(result)
        })
}

searchByItemName('urger')

function paginateItems(page) {
    const itemsPerPage = 6
    const offset = itemsPerPage * (page - 1)
    knexInstance 
        .select('*')
        .from('shopping_list')
        .limit(itemsPerPage)
        .offset(offset)
        .then(result => {
            console.log('Paginate Items', { page })
            console.log(result)
        })
}

paginateItems(3)

function getItemsAfterDaysAgo(daysAgo) {
    knexInstance
        .select('id', 'name', 'price', 'date_added', 'checked', 'category')
        .from('shopping_list')
        .where(
            'date_added', 
            '>', 
            knexInstance.raw(`now() - '?? days'::INTERVAL`, daysAgo) 
            )
        .then(result => {
            console.log('Products added', { daysAgo })
            console.log(result)
        })
}

getItemsAfterDaysAgo(2)

function getTotalCategoryCost() {
    knexInstance
        .select('category')
        .from('shopping_list')
        .sum('price as total')
        .groupBy('category')
        .then(result => {
            console.log('Category Cost')
            console.log(result)
        })
    }

getTotalCategoryCost()