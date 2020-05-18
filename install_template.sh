install_dmg () {
    url="$1"
    app_name="$2"
    # Generate a random file name
    tmp_file=/tmp/`openssl rand -base64 10 | tr -dc '[:alnum:]'`.dmg
    apps_folder='/Applications'

    # Download file and mount
    echo "Installing $app_name..."
    curl -# -L -o $tmp_file $url
    volume=`hdiutil mount $tmp_file | tail -n1 | perl -nle '/(\/Volumes\/.+)/; print $1'`

    # Locate .app folder and move to /Applications
    app=`find "$volume"/. -name *.app -maxdepth 1 -type d -print0`
    cp -ir "$app" $apps_folder

    # Unmount volume, delete temporal file
    hdiutil unmount "$volume" -quiet
    rm $tmp_file

    echo "$app_name installed"

}

install_zip () {
    url="$1"
    app_name="$2"
    # Generate a random file name
    tmp_file=/tmp/`openssl rand -base64 10 | tr -dc '[:alnum:]'`.zip
    apps_folder='/Applications'

    # Download file
    echo "Installing $app_name..."
    curl -# -L -o $tmp_file $url

    # Unzip file
    unzip $tmp_file -d $apps_folder

    # Clean up
    rm $tmp_file

    echo "$app_name installed"

}