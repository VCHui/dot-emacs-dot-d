MAC OS X setup for terminal.app

* Swap [ctrl] and [alt]
  1. Open menu:MAC>Preferences>Keyboard
  2. Open tab:[Keyboard]
  3. Press button:[Modifier keys...]
     - Swap [ctrl] and [alt]

* Set key-binding for forward-paragraph and backward-paragraph
  - Disable Mac OS X key-binding for Mission Control
    1. Open menu:MAC>Preferences>Keyboard
    2. Open tab:[Mission Control]
       - [ ] Mission Control
       - [ ] Application windows
       - [ ] Mission Control
       	 - [ ] Move left a space
         - [ ] Move right a space
  - Set key-binding
    1. Open menu:Terminal>Preferences
    2. Choose tab:[Keyboard]
    3. Press button:[+]
    4. Entry
       - Key: Cursor-down
       - Modifier: Control
       - Action: Send Text
       - : ESC}
    5. Press button:[+]
    6. Entry
       - Key: Cursor-up
       - Modifier: Control
       - Action: Send Text
       - : ESC{
