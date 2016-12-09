#!/bin/bash

#This script is for finish the online exam.

#Questions

#1.Install the Apache package. Allow it to get documents stored on NFS mounted directories.
#2.Extend the existing xfs file system to a total size of 200MB and add a label called myFS.
#3.Assign the same SELinux contexts used by the home directories to the /xfs directory permanently.
#4.Create two users: john with uid/gid equal to 2000, password 12345678 and davis with uid/gid equal to 3000, password 87654321. Make davis‘ account validity stopping in one month.
#5.Allow davis (and only davis) to get full access to john‘s home directory.
#6.Create a directory named /common. Allow john and davis to share documents in the /common directory using a group called team. Both of them can read, write and remove documents from the other in this directory but any user not member of the group can’t.
#7.Create a xfs file system on a new logical volume of 100MB called lv_xfs. Mount it permanently with uuid under /xfs.
#8.Write a Bash script called prog.sh in the /root directory that creates 40 files of 2MB each with the fallocate command in the mounted /xfs directory. Each file has got a name as follows: .file_N where N is a number from 1 to 40.
#9.Create an ext4 file system on a new logical volume of 100MB called lv_ext4. Mount it permanently under the /ext4 directory. Copy the files previously created into this new space.
#10.Create a logical volume of 200MB called lv_swap2 and add it permanently to the current swap space.
#11.Create a cron job running as root, starting at 11PM every day and writing a report on daily system resource consumption in the /var/log/consumption.log file.
#12.Set the default target to boot into X Window level (previously level 5).
#13.Change the hostname to mycentos.example.com
#14.Setup a /home/rhce directory to facilitate collaboration among the rhce group.Each member should be able to create files and modify each others’ files, but should not be able to delete any one else’s files in this directory.
#15.Make sure user bob’s account expires after one week.
#16.Set up a default configuration webserver. In the index file, place the sentence “This is a test.”.Make this webserver only accessible to your machine and server1.example.com.
#17.Add 100MB of swap space to your machine using a logical volume.
#18.Create user accounts named tony, mike, and john each with the “redhat” password and belonging to a secondary group called “rhce”.
#19.Expand the file system on /home to 2GB in size.
#20.Set up a default configuration FTP server.Block ftp connections from hackers.net
#21.Set up a new 100MB logical volume. Encrypt the volume with LUKS and set it up to automatically decrypt and mount to /crypt at boot.Use the ext4 filesystem and place an empty file in the root of the encrypted filesystem with a name of “test”.
#22.Create a new user “bob”. Give bob, not in the rhce group, read and write access to /home/rhce.
#23.Set up a job to delete all of the regular files in the /home/bob directory on the second day of every month at 8:30 A.M.
#24.Install the appropriate kernel update from http://mirrors.kernel.org/centos/6.4/updates/x86_64/Packages.
#The following conditions must also be met:
#– the updated kernel is the default kernel when the system is rebooted.
#– the original kernel remains available and bootable on the system.

#25.Set up the automounter, and configure it to read the DVD on the /misc/dvd directory.



##################################################################################################################
#					       Completed                  					 #
##################################################################################################################

















