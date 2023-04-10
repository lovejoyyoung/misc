#!bin/zsh
echo -e "\nHi, Which one you are gonna download?"
read build

headers="-H X-JFrog-Art-Api:YOUR_API_TOKEN"
#build="BUILD_NAME"
hidden="DOWNLOAD_LINK"

urls=(
    "https://$hidden/$build/downloadfile1.zip"
    "https://$hidden/$build/downloadfile2.zip"
    "https://$hidden/$build/downloadfile3.zip"
    "https://$hidden/$build/downloadfile4.zip"
    "https://$hidden/$build/downloadfile5.zip"
    "https://$hidden/$build/downloadfile6.zip"
    "https://$hidden/$build/downloadfile7.zip"
)

cd ~/Downloads
#cd ~/Desktop

echo "Download Started $(date +"%T")"

# sync downloading
for url in "${urls[@]}"
do 
    fileName=$(basename $url)
    curl -sSL $headers $url -o $fileName
done 
# sync downloading

# # async downloading
# for url in "${urls[@]}"
# do 
#     fileName=$(basename $url)
#     curl -sSL $headers $url -o $fileName
# done | parallel --no-notice 
# # async downloading

echo "Download Finished $(date +"%T")"