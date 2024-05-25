## Use of ssh keys to login to servers:
In this tutorial we will learn about how ssh keys are used.
`ssh-keygen`
tutorial copied from https://www.techtarget.com/searchsecurity/tutorial/Use-ssh-keygen-to-create-SSH-key-pairs-and-more

1. upload the public key to a remote server to enable automated and authenticated logins
2. use the same public key on multiple remote servers; and
3. use multiple public keys for different functions on the same server.

## Now do the following

1. `ssh-keygen -t rsa` keep on pressing enter enter enter
3. `ssh-copy-id username@host`

## For Windows
ssh-copy-id wont work in powershell use the below command
1. `type $env:USERPROFILE\.ssh\id_rsa.pub | ssh user@hostname "cat >> .ssh/authorized_keys"`
