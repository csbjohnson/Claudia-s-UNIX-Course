# Function to count files in current directory
count_files() {
    ls -l | grep "^-" | wc -l
}

# Guessing game
guess_game() {
    local correct=$(count_files)
    local guess

    while true; do
        read -p "Guessing time! How many files are in the directory?: " guess
        if [ "$guess" -lt "$correct" ]; then
            echo "Too low, try again! :)"
        elif [ "$guess" -gt "$correct" ]; then
            echo "Too high, try again! :)"
        else
            echo "Wohooo! Congratulations!!! Knew you could do it!"
            break
        fi
    done
}

# Guessing game function
guess_game



