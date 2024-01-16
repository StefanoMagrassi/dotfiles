# ---
# Ensure folder and create symbolic link.
# $1 = source
# $2 = target
# $3 = files
# ---
ensure_and_make_link() {
  local SOURCE=$1
  shift
  local TARGET=$1
  shift
  local FILES=("$@")

  echo "---"
  echo "ensure folder and create symbolic link"
  echo ""
  echo "> SOURCE: $SOURCE"
  echo "> TARGET: $TARGET"
  echo "> FILES:  ${FILES[@]}"

  mkdir -p $TARGET

  for file in "${FILES[@]}"
  do
    rm -f $TARGET/$file
    ln -s $SOURCE/$file $TARGET/$file
  done

  echo ""
  echo "done"
  echo "---"
  echo ""
}

