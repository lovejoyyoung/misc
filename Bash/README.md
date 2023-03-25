# ./xxx.sh permission denied

        -rw-r--r--
        chmod +x xxx.sh (executable added)
        -rwxr--r--

        PERMISSION      EXAMPLE

         U   G   W
        rwx rwx rwx     chmod 777 filename
        rwx rwx r-x     chmod 775 filename
        rwx r-x r-x     chmod 755 filename
        rw- rw- r--     chmod 664 filename
        rw- r-- r--     chmod 644 filename

        Owner:  rwx = 4+2+1 = 7
        Group:  r-- = 4+0+0 = 4
        Others: r-- = 4+0+0 = 4

# NOTE: Use 777 sparingly

        OPERATOR DESCRIPTION

        + Adds a permission to a file or directory
        – Removes the permission
        = Sets the permission if not present before. Also overrides the permissions if set earlier.

        $ chmod ug+rwx example.txt
        $ chmod o+r example2.txt

        LEGEND
        U = User
        G = Group
        O = Other

        r = Read
        w = write
        x = execute
        - = no access


# set var
        
        export myname = "macuser"
        echo $myname
        