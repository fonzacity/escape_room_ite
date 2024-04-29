#!/bin/bash
# Script to check obtained clues
echo "The moment of truth has arrived"
echo "Answer correctly and you'll deactivate the bomb!"
echo "The answer can only be clue1, clue2, or clue3"

# Function to ask a question and verify the answer
question() {
    local statement="$1"
    local correct_answer="$2"
    # Ask the question
    read -p "$statement: " user_answer
    # Verify the answer
    if [ "$user_answer" != "$correct_answer" ]; then
        echo "BOOM!"
        exit 1
    fi
}

# Ask the questions
question "What is the correct clue in the kitchen on the first floor?" "clue3"
question "What is the correct clue in the living room on the second floor?" "clue1"
question "What is the correct clue in the bedroom on the third floor?" "clue2"
question "What is the correct clue in the bathroom on the first floor?" "clue3"

# If reached here, all answers are correct
echo "Congratulations, you have deactivated the bomb and Clasroom 18 is safe again!"
