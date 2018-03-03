package_name=$1
script_directory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Only run if a package
if
  [[ -n "$package_name" ]];
then
  echo "Creating a new project \"$package_name\""
  rsync -rq --progress "$script_directory/" "./$package_name" --exclude ".git"

  echo "Removing all objects inside the new package build directory"
  rm ./$package_name/build/*

  echo "Removing the create_new_package.sh from the new package directory"
  rm ./$package_name/create_new_package.sh
else
  echo "Please enter a new package name.     ./create_new_package.sh NEW_PACKAGE_NAME"
fi
