# Mini-Blog-Azerion
This is a demo app, made for the application procedure Azerion.<br>
There is a language confusion, I've started the app in Turkish and during the development procedure, I've switched to English.
If consisteny on language is asked, I can change it, however I'm leaving it like that for now. I keep it simple and didn't spend to much time
on the Frontend, everything has been Bootstrapped.

## Built With
* Ruby
* Rails
* SQLite
* Bootstrap
* RSpec

## Prerequisities

To get this project up and running locally, you must already have ruby installed on your computer.

## Getting Started

**To get this project set up on your local machine, follow these simple steps:**

**Step 1**<br>
Navigate through the local folder where you want to clone the repository and write<br>
``` git clone git@github.com:eypsrcnuygr/MINI_BLOG_AZERION.git```. It will clone the repo to your local folder.<br>
or with https<br>
```git clone https://github.com/eypsrcnuygr/MINI_BLOG_AZERION.git```.<br>
**Step 2**<br>
Run ```cd MINI_BLOG_AZERION```<br>
**Step 3**<br>
Run ```bundle install``` to get the necesary gems' configuration.<br>
**Step 4**<br>
Run ```rails db:create``` to create the database.<br>
**Step 5**<br>
Run ```rails db:migrate``` to make the migrations and ready your database. Also ```rails:db:seed``` to seed the pre-configured database.<br>
**Step6**<br>
Run ```yarn install --check files``` to verify your node modules.<br>
**Step7**<br>
Run ```rails s``` to run the server and go to 'http://localhost:3000/' at your browser.<br>
**Step8**<br>
Enjoy<br>

## Features

**1**
You can see the blog posts on the main page and the details of it by clicking the Show button.<br>
**2**
You can click the email anchor on the specific post page and see the details of the user. It has a users subdomain.<br>
**3**
If the post created with 'iki kolon' design feature, on the user page the body of the post will be splitted into two lines. Otherwise it'll be one line. <br>
**4**
Also the color choice is affecting the title color on the user page.<br>
**5**
On the user page, the posts are grouped by their header. There are 4 typef of header.<br> 
**6**
You can check the validations on the related model file<br>
**7**
You can see the posts and the comments, but you can not create post or add comment without logging in.<br>
**8**
You can only update or delete your own posts. Comments can't be deleted nor edited by anyone.<br>
**9**
All the posts and the comments are in order by date.
## Test
- There are 17 tests in total.
- There are two folders, one is for unit tests which is '/spec/models' that is responsible to test 'comment', 'post' models.
- '/spec/features' folder has 1 files that is responsible from actions tests.
- The test cases covers the log-in, log-out, navigating through the app, creation, updating and deletion of posts, two models and their associations.
- For testing all you need to do is run ```rspec``` in your cloned folder.

## Authors

👤 **Eyüp Sercan UYGUR**

-   Github: [@eypsrcnuygr](https://github.com/eypsrcnuygr)
-   Twitter: [@eypsrcnuygr](https://twitter.com/eypsrcnuygr)
-   LinkedIn: [eypsrcnuygr](https://www.linkedin.com/in/eypsrcnuygr/)
-   Gmail: [sercanuygur@gmail.com](sercanuygur@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

-   This Project was part of an assignment available on Microverse.
-   Our thanks to Microverse and all our peers and colleagues there.

## 📝 License

This project is [MIT](lic.url) licensed.
