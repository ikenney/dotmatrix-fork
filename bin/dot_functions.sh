# Print functions

print_padded() {
  echo "$1 : $2"
}

create_notice() {
  echo "Creating $1 : $2"
}


skip_notice() {
  echo "Skipping $1 : $2"
}

copy_notice() {
  echo "Copying $1 : $2"
}

link_notice() {
  echo "Linking $1 : $2"
}

remove_notice() {
  echo "Removing $1 : $2"
}

# Other functions

directory_warning() {
  name=$(basename $0)
  if [[ ! "$PWD/bin/$name" -ef "$0" ]]; then
    echo "Please run '$name' from dotmatrix root folder"
    exit 1
  fi
}

dirty_warning() {
  if [ -n "$(git status --porcelain)" ]; then
    echo "ERROR: You have a dirty working copy."
    echo "Commit or clean any changes, and run bin/upgrade again."
    exit 1
  fi
}
