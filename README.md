# Resources
Compiled list of resources in the field of neuroscience, machine learning or artifical intelligence. This is not any other resource list where bunch of links are provided, they are personal used resources like for a certain topic some link and for some other a whole book.

I am dividing this topic in three fields
1. Neuroscience [link](/neuroscience.md)
2. Machine learning [link](/machine_learning.md)
3. computer science resources[link](/cs.md)
4. Statistics [link](/statistics.md)
4. ebooks [link](/ebooks.md)
5. Life hacks [link](/lifehacks.md)


Note: if you are curious what is git or why should we use git so here is another [link](https://swcarpentry.github.io/git-novice/01-basics/index.html). It is not beginner friendly though

but you want to learn how to use git by the help of command line see this website, it has proved me very helpful[link](https://kbroman.org/github_tutorial/pages/first_time.html)

Setting up ssh keys for easy login
1. check for existing keys by opening git gui app and then click on help then click on show ssh keys
2. if it doesnt have keys then we will generate a new key
    i. open git bash
    ii. use code: ssh-keygen -t ed25519 -C "your_email@example.com"
    iii. enter a passprhase of your choice. It is differnent from the github account password
    iv. now we have to add the key to the ssh agent
        1. type and enter code: eval "$(ssh-agent -s)"
            i. a message like agent pid # will be shown
        2. enter the code: ssh-add ~/.ssh/id_ed25519
            i. enter the passphrase
            ii. the key will be added to the agent
3. now add the key to github account
    i. copy the content of key file by code: clip < ~/.ssh/id_ed25519.pub
    ii. go to setting of github account, click on ssh keys and add new
    iii. provide title to key like personal laptop
    iv. now confirm with github password
4. now enter code: ssh -T git@github.com
    i. if the following message is shown then you are good to go: Hi username! You've successfully authenticated, but GitHub does not provide shell access.