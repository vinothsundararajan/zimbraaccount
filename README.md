# zimbraaccount
Here, is the small script file, which can do automatically create accounts in zimbra.

### Zimbra email id create by using simple for loop script.

###### The below script which can do automatically create accounts in zimbra.

![](https://pbs.twimg.com/profile_images/644236751842766848/9bneglSp.png)

Step1:- 
-
Create a .txt file with name of zimbraacounts.txt put your required bulk amount of         email id's in it. (1000 or more.)

Step2:-
-
create a like zimbrascript.sh with permission of execution for zimbra or create with 777.

        chown zimbra:zimbra zimbrascript.sh
        or
        chmod 777 zimbrascript.sh

Step3:-      
-
Open the file zimbrascript.sh with vim or vi and put the below command on it.and then execute the file by using ./zimbrascript.sh or sh zimbrascript. And one more option we can add this in crontab to do in specific time.


            #!/bin/bash
            
            for i in `cat zimbraaccounts.txt`
            do      
            	echo "$i"
                `zmprov ca $i P@ssw0rd >> /tmp/accountcreated.txt`
            done
                
Thank you.                
