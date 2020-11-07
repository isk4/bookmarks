# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(
    [
        {
            name: "Nature/science"
        },
        {
            name: "Animals",
            category_id: 1
        },
        {
            name: "Felines",
            category_id: 2
        },
        {
            name: "Programming"
        },
        {
            name: "Music"
        },
        {
            name: "Job-related"
        },
        {
            name: "Metal",
            category_id: 5
        },
        {
            name: "Hip-hop",
            category_id: 5
        },
        {
            name: "Canines",
            category_id: 2
        }
    ]
)

Type.create(
    [
        {
            name: "Image"
        },
        {
            name: "Article"
        },
        {
            name: "Video"
        },
        {
            name: "Utility"
        }
    ]
)

Bookmark.create(
    [
        {
            name: "rails counter cache",
            url: "https://scoutapm.com/blog/how-to-start-using-counter-caches-in-rails",
            type_id: 2,
            category_id: 4
        },
        {
            name: "Ruby lambas procs",
            url: "https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/",
            type_id: 2,
            category_id: 4
        },
        {
            name: "Alain perez queretaro",
            url: "https://www.youtube.com/watch?v=FrKHE80WNGQ",
            type_id: 3,
            category_id: 5
        },
        {
            name: "lynx posing",
            url: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Lynx_lynx_poing.jpg/220px-Lynx_lynx_poing.jpg",
            type_id: 1,
            category_id: 3
        },
        {
            name: "jaguar",
            url: "https://gamepedia.cursecdn.com/greenhell_gamepedia_en/d/d3/Jaguar.png",
            type_id: 1,
            category_id: 3
        },
        {
            name: "lion",
            url: "https://1.bp.blogspot.com/_aCLL2FrDQUA/S7dd5SjeS1I/AAAAAAAAA0Y/bprmR0A2hRk/s1600/Smiling+Lion+closeup.jpg",
            type_id: 1,
            category_id: 3
        },
        {
            name: "getonboard",
            url: "https://www.getonbrd.com/myjobs",
            type_id: 4,
            category_id: 7
        },
        {
            name: "linkedin",
            url: "https://www.linkedin.com/",
            type_id: 4,
            category_id: 7
        },
        {
            name: "draw.io",
            url: "https://app.diagrams.net/",
            type_id: 4,
            category_id: 7
        },
        {
            name: "freecodecamp",
            url: "https://www.freecodecamp.org/",
            type_id: 4,
            category_id: 4
        },
        {
            name: "meshuggah ophidian trek",
            url: "https://www.youtube.com/watch?v=uq2HNLTxaZc",
            type_id: 3,
            category_id: 8
        },
        {
            name: "fredrik thordendal face",
            url: "https://i.pinimg.com/originals/91/0a/b2/910ab28e2f84b13d754a7a340b91521f.jpg",
            type_id: 1,
            category_id: 8
        },
        {
            name: "animals wiki description",
            url: "https://en.wikipedia.org/wiki/Animal",
            type_id: 2,
            category_id: 2
        },
        {
            name: "bbc top 10 video",
            url: "https://www.youtube.com/watch?v=FeJKJ5MoCHY",
            type_id: 3,
            category_id: 2
        },
        {
            name: "colo-colo cat",
            url: "https://i.ytimg.com/vi/3qipWoZq2KI/maxresdefault.jpg",
            type_id: 1,
            category_id: 3
        },
        {
            name: "madvillain figaro rhymes",
            url: "https://www.youtube.com/watch?v=g3Jmuhy5O04",
            type_id: 1,
            category_id: 3
        },
        {
            name: "krs-one hip-hop rant",
            url: "https://www.youtube.com/watch?v=YxBeYkmIu5E",
            type_id: 3,
            category_id: 9
        },
        {
            name: "angrylildog",
            url: "https://i.ytimg.com/vi/3qesirWAGt4/maxresdefault.jpg",
            type_id: 1,
            category_id: 9
        },
        {
            name: "cutelildog",
            url: "https://www.builddirect.com/blog/wp-content/uploads/2010/08/Cute-Little-Dog.jpg",
            type_id: 1,
            category_id: 9
        },
        {
            name: "dog video",
            url: "https://www.youtube.com/watch?v=kdJvv3RipNY",
            type_id: 3,
            category_id: 9
        }
    ]
)