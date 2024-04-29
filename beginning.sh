#!/bin/bash
# Script to create the Escape Room
mkdir -p EscapeITE/{bomb,floor{1,2,3}/{bathroom,kitchen,bedroom,living}} && touch EscapeITE/floor{1,2,3}/{bathroom,kitchen,bedroom,living}/clue{1,2,3}
echo -e "Welcome to the ITE1 Escape Room\nYou've just activated a dangerous bomb\nTo deactivate it, you need to gather the necessary components\nYou'll find the first component in the kitchen on the first floor\nOnce you've completed the steps, run the file deactivate.sh" > EscapeITE/welcome
echo -e "Place this component inside the bomb\nName it 'component1'\nThe next instruction can be found in the living room on the second floor" > EscapeITE/floor1/kitchen/clue3
echo -e "Place this component inside the bomb\nName it 'component2'\nThe next instruction can be found in the bedroom on the third floor" > EscapeITE/floor2/living/clue1
echo -e "Place this component inside the bomb\nName it 'component3'\nThe next instruction can be found in the bathroom on the first floor" > EscapeITE/floor3/bedroom/clue2
echo -e "Place this component inside the bomb\nName it 'component4'\nThis was the last component. You can now deactivate the explosive!" > EscapeITE/floor1/bathroom/clue3
