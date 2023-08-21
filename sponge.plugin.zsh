# Buffer standard input to a file. Useful for redirecting output of a pipe chain to the same input file.
#
#  $ grep -v 'a' foo.txt | sponge foo.txt
function sponge() {
    if [ -z "$1" ]; then
        echo "sponge(): No file name given!"
        exit 1
    fi

    # Create a temporary file.
    local tmpfile="$(mktemp)"
    # Redirect all stdin in to the temporary file.
    cat > "$tmpfile"
    # Replace the destintation file with the temporary file.
    mv "$tmpfile" "$1"
}
