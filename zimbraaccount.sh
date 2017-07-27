#!/bin/bash
          
     for i in `cat zimbraaccounts.txt`
         do      
       	echo "$i"
         `zmprov ca $i P@ssw0rd >> /tmp/accountcreated.txt`
        done
