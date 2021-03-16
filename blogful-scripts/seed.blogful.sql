BEGIN;

INSERT INTO blogful_articles (title, date_published, content)
VALUES
    ('Captains Blog',       now() - '24 days'::INTERVAL, 'Captains Blog startdate 342342.  This makes me a complete nerd for doing this'),
    ('Wild ride',           now() - '23 days'::INTERVAL, 'Keep your hands and arms inside the ride at all times.  Riders may get wet!'),
    ('Show Me Your ',       now() - '23 days'::INTERVAL, 'Some random information here that is just a space filler'),
    ('Death By What?',      now() - '22 days'::INTERVAL, 'You''ve heard of being flogged to death well how about blogged to death'),
    ('Puns are Hard',       now() - '22 days'::INTERVAL, 'Thinking of 20 puns with the word blog is hard, so I stopped after 4'),
    ('Hits from the...',    now() - '21 days'::INTERVAL, 'Oh shoot!  I thought of another one! Hits from the Blog'),
    ('Lions',               now() - '20 days'::INTERVAL, 'What comes after lions?  What else could there be?'),
    ('Tigers',              now() - '20 days'::INTERVAL, 'Wait is there another fierce animal going to occur in this list?'),
    ('And Bears',           now() - '19 days'::INTERVAL, 'Oh of course Bears, we obviously forgot about bears'),
    ('Oh My!!',             now() - '19 days'::INTERVAL, 'I mean what else do you yell after you see a lion, tiger and a bear?'),
    ('Run for It Marty',    now() - '18 days'::INTERVAL, 'They found me!  I don''t know how but they found me'),
    ('1.21 Gigawatts',      now() - '17 days'::INTERVAL, 'How much power does it take to run the flux capaciter?  Let''s ask the expert, Doc Brown'),
    ('Biff Tannen',         now() - '15 days'::INTERVAL, 'The bully that keeps on bullying.  About as funny as a screen door on a battleship'),
    ('World of Lorraine',   now() - '13 days'::INTERVAL, 'You''re safe and sound now, back in good old 1955'),
    ('How to Marty McFly',  now() - '12 days'::INTERVAL, 'Get some tight jeans and an orange vest, you''re traveling through time'),
    ('The Last Crusade',    now() - '12 days'::INTERVAL, 'Don''t call him Junior, even though the dog''s name was Indiana'),
    ('Am I a Nerd?',        now() - '10 days'::INTERVAL, 'Judging by my made up content for this I am in fact, a nerd'),
    ('Who Shot First',      now() -  '7 days'::INTERVAL, 'We can''t have fake nerd blogs without debating who shot first...if you know you know'),
    ('Robot Arms For All',  now() -  '4 days'::INTERVAL, 'Who doesn''t lose a limb in Star Wars, really?'),
    ('Writers Block',       now() -  '3 days'::INTERVAL, 'I spent more time on this fake data than the assignment'),
    ('THE END',             now() -  '2 days'::INTERVAL, 'This is the last one, I''ve run out of dumb things to put in this thing.')
;

COMMIT;