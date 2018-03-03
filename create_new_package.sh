package_name=$1
script_directory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Only run if a package
if
  [[ -n "$package_name" ]];
then
  echo "Creating a new project \"$package_name\""
  rsync -rq --progress "$script_directory/" "./$package_name" --exclude ".git"

  echo "Renaming folders/files"
  mv "./$package_name/PACKAGENAME" "./$package_name/$package_name"
  mv "./$package_name/tests/test_PACKAGENAME.py" "./$package_name/tests/test_$1.py"

  echo "Removing all objects inside the new package build directory"
  rm ./$package_name/build/*

  echo "Removing the create_new_package.sh from the new package directory"
  rm ./$package_name/create_new_package.sh

  echo "Replacing all instances of \"PACKAGENAME\" with \"$1\""
  sed -i 's/PACKAGENAME/'$1'/g' ./$package_name/setup.py
  sed -i 's/PACKAGENAME/'$1'/g' ./$package_name/tests/test_$1.py

else
  echo "Please enter a new package name.     ./create_new_package.sh NEW_PACKAGE_NAME"
fi
