# Resources
Compiled list of resources in the field of neuroscience, machine learning or artifical intelligence. This is not any other resource list where bunch of links are provided, they are personal used resources like for a certain topic some link and for some other a whole book.

I am dividing this topic in three fields
1. Neuroscience [link](/neuroscience.md)
2. Machine learning [link](/machine_learning.md)
3. computer science resources[link](/cs.md)
4. Statistics [link](/statistics.md)
5. ebooks [link](/ebooks.md)
6. Life hacks [link](/lifehacks.md)
7. After mbbs opportunities [link](/cms.md)
8. medical [link](/medical/readme.md) . Since, I am a doctor I am interested in human physiology too.


Note: About git usage
1. if you are curious what is git or why should we use git so here is another [link](https://swcarpentry.github.io/git-novice/01-basics/index.html). It is not beginner friendly though
2. but you want to learn how to use git by the help of command line see this website, it has proved me very helpful[link](https://kbroman.org/github_tutorial/pages/first_time.html)
3. about git branching [link](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)

Setting up ssh keys for easy login
1. check for existing keys by opening git gui app and then click on help then click on show ssh keys
2. if it doesnt have keys then we will generate a new key
    1. open git bash
    2. use code: `ssh-keygen -t ed25519 -C "your_email@example.com"`
    3. enter a passprhase of your choice. It is differnent from the github account password
    4. now we have to add the key to the ssh agent
        1. type and enter code: `eval "$(ssh-agent -s)"`
            1. a message like agent pid # will be shown
        2. enter the code: `ssh-add ~/.ssh/id_ed25519`
            1. enter the passphrase
            2. the key will be added to the agent
3. now add the key to github account
    1. copy the content of key file by code: `clip < ~/.ssh/id_ed25519.pub`
    2. go to setting of github account, click on ssh keys and add new
    iii. provide title to key like personal laptop
    3. now confirm with github password
4. now enter code: `ssh -T git@github.com`
    1. if the following message is shown then you are good to go: Hi username! You've successfully authenticated, but GitHub does not provide shell access.