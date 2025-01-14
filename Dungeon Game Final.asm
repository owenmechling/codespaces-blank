%include "/usr/local/share/csc314/asm_io.inc"

segment .data
    ;----------------- Messages
    border_msg              db  "----------------------------------------", 0
    border_msg_2            db  "========================================", 0
    border_msg_3            db  "////////////////////\\\\\\\\\\\\\\\\\\\\", 0
    border_msg_4            db  "\\\\\\\\\\\\\\\\\\\\////////////////////", 0
    border_msg_5            db  "........................................", 0
    border_msg_6            db  "|||||||||||||||||||  |||||||||||||||||||", 0  
    ;----------------- Title
    title_msg               db  "-------------The Labyrinth--------------", 0 
    title_msg_2             db  "A game by Jacob Miller, Zachary Pickard and Owen Mechling", 0
    intro_msg               db  "You find yourself in an overgrown, dark and ominous room made of stone. The vines grow into the rocks, and you feel an urge to press onward.", 0
    health_msg              db  "----------   Health :   ", 0
    ;----------------- Choices
    choices_battle          db  "1. Fight      2. Run     3. Taunt ", 0 
    choices_noncombat       db  "1. Take it       2. Destroy it      3. Ignore it", 0
    choices_LR              db  "1. Left     2. Right", 0
    item_choice_msg         db  "1. Ring    2. Map    3. Staff", 0
    choice_enter_msg        db  "Enter your choice: ", 0
    what_do_msg             db  "What do you do?", 0
    ;----------------- Encounters

    ;----------------- Encounter 1
    encounter_1_msg         db  "As far as you can tell, there are only two ways forward: Left(1) or Right(2). Choose a path.", 0
    encounter_1L_msg        db  "You wander down the left path and cross paths with a small creature.", 0
    encounter_1R_msg        db  "You wander down the right path and find yourself in a room just like the one you left. You look behind you and the path has vanished.", 0
    ;----------------- Encounter 2
    encounter_2_msg         db  "The creature looks at you with a puzzled expression. It seems to be waiting for something.", 0
    encounter_2_msg_2       db  "You are not sure of this creature's intention and it does not seem to be sure of yours. What do you do?", 0
    ;----------------- Encounter 3
    encounter_3_msg         db  "A cloaked figure appears before you, their identity shrouded in darkness, but somehow familiar.. Choose wisely.", 0
    encounter_3_msg_2       db  "'A choice must be made...' the figure utters as it extends both arms towards you. As its fingers unfurl you see two small objects in each hand", 0
    encounter_3_msg_3       db  "In the left hand there is a multifaceted gem, glowing blue; in the right hand, a small smooth and ordinary stone.", 0
    encounter_3L_msg        db  "You reach out and take the gem from the figure's left hand. You hear a piercing wail and the stone dissolves into nothing in your hand.", 0
    encounter_3R_msg        db  "You reach out and take the stone from the figure's right hand. The stone is warm, and gives you an unshakable feeling of deja vu...", 0
    encounter_3_end         db  "You look up and the figure is gone. You continue onward.", 0
    ;----------------- Encounter 4
    encounter_4_msg         db  "You hear strange whispers as you approach a glowing door. Do you enter? Yes(1) No(2)", 0
	encounter_4_msg_2		db 	"You slowly reach toward to door handle. As you draw near, the door pulls you in with a magnitude of force. You feel your whole body strain under the pressure as everything turns to black..",0
	encounter_4_msg_22		db  "Just as fast as you were pulled in you appear on the other side, you feel an ache over your body but have no discernable wounds. You continue onward.",0
	encounter_4_msg_3		db  "You know a trap when you see one. You turn to go the other way when a whisper summons you back. You turn around and see the door twist and form into a tall dark figure with a long shroud.",0
	encounter_4_msg_33		db  "You feel a chill cast over your whole body as the spirit beckons you toward it.",0
    ;----------------- Encounter 5
    encounter_5_msg         db  "A vast pit opens in front of you. You must find a way to cross.", 0
	encounter_5_msg_opt1	db	"1. You back up, brace yourself, then run as hard as you can before leaping over the gap",0
	encounter_5_msg_opt2	db 	"2. You daftly run against the wall, making your way over the pit",0
	encounter_5_msg_opt3	db 	"3. You close your eyes and walk forward",0
	encounter_5_msg_fail	db	"Despite your best efforts you fall short. Your stomach turns and you scream as you plummet toward your certain death.",0
	encounter_5_msg_fail_2	db 	"You continue falling for what feels like an hour, now quite bored with it. Suddenly your thrown to the floor, shaken up, but happy to be on the ground.",0
	encounter_5_msg_success	db	"You hold your breath and walk forward waiting for the drop, but it never comes? You open your eyes and are shocked to find yourself standing, seemingly floating in the middle of the pit.",0
	encounter_5_msg_success2 db "You realize there is an invisible bridge leading to the other side. You continue onward unscathed.",0
    ;----------------- Encounter 6
    encounter_6_msg         db  "You encounter a monstrous beast blocking your path. It tenses up briefly before letting out a haunting howl.. What do you do?", 0
    ;----------------- Encounter 7
    encounter_7_msg         db  "You come across another adventurer who has been mortally wounded... They motion you over to them in a desperate fashion.", 0
    encounter_7_msg_2       db  "'Please, help me; I have a healing serum in my bag. If you can get it for me, I might be able to survive.'", 0
    encounter_7_choices     db  "1. Take the potion, leaving the adventurer for dead.   2. Retrieve the potion and give it to the dying adventurer.", 0
	encounter_7_result_1	db  "You take the potion and leave the adventurer to die. As you walk away, the adventurer utters '...why...'... A sense of guilt comes over you..", 0
    encounter_7_result_11   db  "You feel a sense of dread as you walk away from the adventurer. This dread does not stop you from drinking their health potion.", 0
	encounter_7_result_2	db  "You retrieve the potion and give it to the adventurer. They drink it and their wounds begin to heal. They thank you and you go on your way.", 0
    ;----------------- Encounter 8
    encounter_8_msg         db  "As you progress down the path, a knight stands in your way. You call out to them, but they say nothing.", 0
    ;----------------- Encounter 9
    encounter_9_msg         db  "A giant statue holding a spear and shield stands before you. It looks like it could come alive at any moment.", 0
    encounter_9_msg_2       db  "You feel a sense of unease as you approach by the statue. It seems to be watching you.", 0
    encounter_9_msg_3       db  "With a great rumble and physics-breaking speeds the statue stabs its immense spear into the ground in front of you.", 0
    encounter_9_msg_4       db  "You feel the ground shake beneath you as the statue's shield begins to glow. You feel a sense of fear as the shield's light grows brighter.", 0
    encounter_9_msg_5       db  "The statue's shield explodes in a blinding light. You feel a sense of weightlessness and pain as you are thrown back into the darkness.", 0
    encounter_9_msg_6       db  "You notice a small hole in the tip of the spear at eye level. You retrieve the small smooth stone from your belt and place it into the hole..", 0
    encounter_9_msg_7       db  "The statue's shield stops glowing and the spear retracts back into the statue's hand. The statue's eyes glow a bright blue and it steps aside.", 0
    ;----------------- Final Encounter
    final_encounter_welcome db  "An ornately decorated door materializes itself in front of you. You approach it.", 0
    final_encounter_msg     db  "Upon entering the next room, everything fades to black and a feeling of finality comes over you...", 0
    final_encounter_msg_2   db  "You hear a familiar voice, it fills the space around you and becomes all you can hear...", 0 
    final_encounter_msg_3   db  "' -- Y o u r  s o u l  i s  b e i n g  w e i g h e d . . . ' ", 0
    ;----------------- Endings
    good_ending_msg         db  "In an instant the darkness blinks to a bright, boundless room, full of color. The cloaked figure from before stands before you.", 0
    good_ending_msg_2       db  "'You have shown great compassion and kindness. The Labyrinth is satiated. You are free. The exit remains ahead.'", 0
    good_ending_msg_3       db  "You feel a sense of relief as you step through the next door and into the light. You have escaped the Labyrinth. The sun has never felt so warm.", 0
    bad_ending_msg          db  "The darkness closes in on you. You feel the weight of failure dragging you down.", 0
    bad_ending_msg_2        db  "You begin to hear overlapping whispers in the back of your mind... '...they are not ready...' '...such a shame...' '...showed such potential...'", 0
    bad_ending_msg_3        db  "You feel a sense of dread the blackness beneath you splits into a cavern... You begin to fall, accelerating at great speed", 0
    bad_ending_msg_4        db  "You feel the wind rush past you as you fall into the void. You feel a sense of finality as you fall into the darkness for what feels like an eternity.", 0
    neutral_ending_msg      db  "A door opens in front of you and you find yourself back in the starting room. Perhaps the labyrinth has no end...", 0
    thank_you_msg           db  "Thank you for playing!", 0
    ;----------------- Hidden Room
    hidden_room_msg         db  "You find a hidden room with three items. Choose wisely:", 0
    incorrect_item_msg      db  "Nothing happens. Choose again.", 0
    correct_item_msg        db  "The staff glows brightly as you pick it up! A secret door opens, revealing a way forward.", 0
    hidden_ending_msg       db  "You step into a room filled with gold, artifacts, and ancient texts of immense knowledge. The door vanishes behind you, and a new one appears before you.", 0
    failed_item_msg         db  "The room fades and a dark path forward manifests itself in front of you", 0
    ;----------------- Result Messages
    death_msg               db  "You have no health left. Everything fades to black and you can feel your consciousness slipping into the void...", 0
    death_msg_2             db  "... a moment of nothingness passes...", 0
    death_msg_3             db  " out of the nothingness you hear a voice: 'o p e n  y o u r  e y e s. .  .' ...... and you wake up in an all too familiar dark room.", 0
	battle_taunt_msg        db  "Your taunts enrage the beast, but you avoid combat.", 0
	taunt_attempt_msg		db 	"You attempt to taunt the enemy...",0
	taunt_success_msg		db 	"Your taunt works! The enemy becomes mentally incapacitated and allows you to pass as it reconsiders its life.",0
	taunt_fail_msg			db 	"Your taunt fails... The enemy becomes enraged and lands a vicious blow on you!",0
    battle_fight_msg        db  "You fight bravely and defeat the beast!", 0
    battle_run_success_msg  db  "You succeed in running past the creature. It gives you no resistance.", 0
	battle_loss_msg			db 	"The enemy strikes a crippling blow! The pain is severe, but you manage to make it away.", 0
	invalidchoice_msg	    db  "Invalid choice, please try again.", 0
	error_msg				db	"Error with Branch Counter, Back to the drawing board", 0
	hubris_good_msg         db  "Your hubris is GOOD.", 0
	hubris_neutral_msg      db  "Your hubris is NEUTRAL.", 0
	hubris_bad_msg          db  "Your hubris is BAD.", 0
	hubris_tracker_msg      db  "----------   Hubris :   ", 0
	health_tracker_msg      db  "----------   Health :   ", 0
	health_loss_msg         db  "You lost health.", 0
	health_gain_msg         db  "You gained health.", 0
	hubris_test				db	"TEST HUBRIS = ",0
    ;----------------- misc data
	seed dd 0					;Stores seed value for dice roll
	multiplier dd 1103515245	;Multiplier for LCG (Linear Congruential Generator), value used for rand in C
	increment dd 12345			;Increment for LCG
	modulus dd 0x7FFFFFFF		;Modulus (2^31 - 1), 0x7FFFFFFF is the highest possible positive integer

segment .bss
    health                  resd 1          ; Player health
    hubris                  resd 1          ; Player hubris (0 = Bad, 1 = Neutral, 2 = Good)
    encounter_number        resd 1          ; Current encounter number
    choice                  resd 1          ; Buffer for player input
    right_choice_count      resd 1          ; Count of consecutive right choices
    item_choice             resd 1          ; Stores player's choice for the hidden room item
	branch_tracker          resd 1          ; 0 = Not set, 1 = Left path, 2 = Right path
	attempts                resd 1          ; Tracks number of attempts in the hidden room
    have_staff              resd 1          ; Flag for having the staff
    have_statue_stone       resd 1          ; Flag for having the statue stone


segment .text
    global asm_main

asm_main:
    push ebp
    mov ebp, esp

    ; Initialize game state
	mov dword [health], 3
    mov dword [hubris], 1                  ; Neutral hubris
    mov dword [encounter_number], 1        ; Start at first encounter
    mov dword [right_choice_count], 0      ; Initialize right path counter
	mov dword [branch_tracker], 0       ; Ensure branch_tracker starts at 0
    mov dword [attempts], 3             ; Initialize attempts for hidden room 
    mov dword [have_staff], 0           ; Initialize staff flag
    mov dword [have_statue_stone], 0    ; Initialize statue stone flag

    ; Display title and intro
    mov eax, border_msg_2
    call print_string
    call print_nl
    mov eax, title_msg
    call print_string
    call print_nl
    mov eax, border_msg_2
    call print_string
    call print_nl
    call print_nl
    call print_nl
    mov eax, title_msg_2
    call print_string
    call print_nl
    call print_nl
   
    call print_border_combo

    call print_nl
    mov eax, intro_msg
    call print_string
    call print_nl
    call print_nl

    ; Start game loop
game_loop:
    ; print border
    call print_border_combo_2

    ; Check if health <= 0
    cmp dword [health], 0
    jle death

    ; Display health
    mov eax, health_msg
    call print_string
    mov eax, [health]
    call print_int
    call print_nl
    call print_nl

    ; Determine ending if all 10 encounters have been completed
    cmp dword [encounter_number], 11
    jge determine_ending

    ; Process encounters
    cmp     dword [encounter_number], 1
    je      encounter_1
    cmp     dword [encounter_number], 2
    je      encounter_2
    cmp     dword [encounter_number], 3
    je      encounter_3
    cmp     dword [encounter_number], 4
    je      encounter_4
    cmp     dword [encounter_number], 5
    je      encounter_5
    cmp     dword [encounter_number], 6
    je      encounter_6
    cmp     dword [encounter_number], 7
    je      encounter_7
    cmp     dword [encounter_number], 8
    je      encounter_8
    cmp     dword [encounter_number], 9
    je      encounter_9
    cmp     dword [encounter_number], 10
    je      final_encounter

    jmp     game_loop

;  -------------- Encounters Logic ---------------------------- 

; --------------  Encounter 1: Choose Left or Right
encounter_1:
    mov eax, encounter_1_msg  ; Load the encounter message
    call print_string         ; Print the encounter message
    call print_nl             ; Print a newline
    call get_choice           ; Get the player's choice

    cmp dword [choice], 1      ; Check if the choice is '1' (Left)
    je set_left_branch
    cmp dword [choice], 2      ; Check if the choice is '2' (Right)
    je set_right_branch

    ; Invalid choice handling
    mov eax, invalidchoice_msg
    call print_string
    jmp encounter_1           ; Retry the encounter

set_left_branch:
    mov dword [branch_tracker], 1      ; Set Left branch
    jmp encounter_1L_logic

encounter_1L_logic:
    mov eax, encounter_1L_msg
    call print_string
    call print_nl

    ; Progress to next encounter
    inc dword [encounter_number]
    jmp game_loop


set_right_branch:
    mov dword [branch_tracker], 2      ; Set Right branch
    jmp encounter_1R_logic

encounter_1R_logic:
    mov eax, encounter_1R_msg
    call print_string
    call print_nl

    ; Increment right choice count for Easter Egg
    inc dword [right_choice_count]
    cmp dword [right_choice_count], 5
    je hidden_room                  ; Trigger secret room if count reaches 5

    ; Dont Progress to next encounter
    ;inc dword [encounter_number]
    jmp game_loop


; -------------- Encounter 2: Small Creature

encounter_2:
    mov eax, encounter_1L_msg
    call print_string
    call print_nl
    mov eax, encounter_2_msg
    call print_string
    call print_nl
    mov eax, encounter_2_msg_2
    call print_string
    call print_nl
    call battle
    inc dword [encounter_number]
    jmp game_loop

    ; Fallback for unexpected errors
    mov eax, error_msg
    call print_string
    call print_nl
    jmp game_loop

;  -------------- Encounter 3: Cloaked Figure
encounter_3:
    mov eax, encounter_3_msg
    call print_string
    call print_nl
    mov eax, encounter_3_msg_2
    call print_string
    call print_nl
    mov eax, encounter_3_msg_3
    call print_string
    call print_nl
    mov eax, choices_LR
    call print_string
    call print_nl
    call get_choice
    cmp eax, 1
    je encounter_3_left
    cmp eax, 2
    je encounter_3_right

    inc dword [encounter_number]
    jmp game_loop

encounter_3_left:
    mov eax, encounter_3L_msg
    call print_string
    call print_nl
    mov eax, encounter_3_end
    call print_string
    call print_nl
    inc dword [encounter_number]
    jmp game_loop

encounter_3_right:
    mov eax, encounter_3R_msg
    call print_string
    call print_nl
    mov eax, encounter_3_end
    call print_string
    call print_nl

    ; Set flag for having the statue stone
    mov dword [have_statue_stone], 1

    inc dword [encounter_number]
    jmp game_loop

;  -------------- Encounter 4: Glowing Door

encounter_4:
    mov eax, encounter_4_msg
    call print_string
    call print_nl
	call get_choice
	cmp eax, 1
	je encounter_4_yes
	cmp eax, 2
	je encounter_4_no
    mov eax, error_msg
	call print_string
	call print_nl
    jmp game_loop

encounter_4_yes:
	mov eax, encounter_4_msg_2
	call print_string
	call print_nl
	mov eax, encounter_4_msg_22
	call print_string
	call print_nl
	call decrement_health
	inc dword [encounter_number]
	jmp game_loop
encounter_4_no:
	mov eax, encounter_4_msg_3
	call print_string
	call print_nl
	mov eax, encounter_4_msg_33
	call print_string
	call print_nl
	call battle
	inc dword [encounter_number]
	jmp game_loop

;  -------------- Encounter 5: Vast Pit

encounter_5:
    mov eax, encounter_5_msg
    call print_string
    call print_nl
	mov eax, encounter_5_msg_opt1
    call print_string
    call print_nl
	mov eax, encounter_5_msg_opt2
    call print_string
    call print_nl
	mov eax, encounter_5_msg_opt3
    call print_string
    call print_nl

	call get_choice
	cmp eax, 1
	je encounter_5_fail
	cmp eax, 2
	je encounter_5_fail
	cmp eax, 3
	je encounter_5_success

    mov eax, error_msg
	call print_string
	call print_nl
    jmp game_loop

encounter_5_fail:
	mov eax, encounter_5_msg_fail
	call print_string
	call print_nl
	mov eax, encounter_5_msg_fail_2
	call print_string
	call print_nl
	call decrement_health
	inc dword [encounter_number]
	jmp game_loop

encounter_5_success:
	mov eax, encounter_5_msg_success
	call print_string
	call print_nl
	mov eax, encounter_5_msg_success2
	call print_string
	call print_nl
	inc dword [encounter_number]
	jmp game_loop

;  -------------- Encounter 6: Monstrous Beast
encounter_6:
    mov eax, encounter_6_msg
    call print_string
    call print_nl
    call battle
    inc dword [encounter_number]
    jmp game_loop

;  -------------- Encounter 7: Mortally Wounded Adventurer
; -------------- THIS ENCOUNTER DETERNMINES THE POSSIBILITY OF THE GOOD ENDING
encounter_7:
    mov eax, encounter_7_msg
    call print_string
	call print_nl
    mov eax, encounter_7_msg_2
    call print_string
	call print_nl
    mov  eax, encounter_7_choices
    call print_string
	call print_nl

    inc dword [encounter_number]

    call get_choice
    cmp dword [choice], 1
    je doom_adventurer
    cmp dword [choice], 2
    je  save_adventurer 
    jmp game_loop

doom_adventurer:
    ;inc dword [health]
    mov dword [hubris], 0          ; Hubris = BAD
    mov eax, encounter_7_result_1
    call print_string
    call print_nl

    mov eax, encounter_7_result_11
    call print_string
    call print_nl

    call increment_health

    jmp game_loop

save_adventurer:
    mov dword [hubris], 2          ; Hubris = GOOD
    mov eax, encounter_7_result_2
    call print_string
    call print_nl

    jmp game_loop


;  -------------- Encounter 8: Knight
encounter_8:
    mov eax, encounter_8_msg
    call print_string
    call print_nl

    mov eax, what_do_msg
    call print_string
    call print_nl

    call battle 

    inc dword [encounter_number]
    jmp game_loop

;  -------------- Encounter 9: Giant Statue
encounter_9:
    mov eax, encounter_9_msg
    call print_string
    call print_nl
    mov eax, encounter_9_msg_2
    call print_string
    call print_nl
    mov eax, encounter_9_msg_3
    call print_string
    call print_nl
    mov eax, encounter_9_msg_4
    call print_string
    call print_nl

    ; Check if player has the statue stone
    cmp dword [have_statue_stone], 1
    je encounter_9_use_stone

    cmp dword [have_statue_stone], 0
    je encounter_9_no_stone

    inc dword [encounter_number]
    jmp game_loop

encounter_9_use_stone:
 
    mov eax, encounter_9_msg_6
    call print_string
    call print_nl
    mov eax, encounter_9_msg_7
    call print_string
    call print_nl

    ; Progress to the next encounter
    inc dword [encounter_number]
    jmp game_loop

encounter_9_no_stone:
    mov eax, encounter_9_msg_5
    call print_string
    call print_nl

    ; Decrement health
    call decrement_health

    inc dword [encounter_number]
    jmp game_loop

;  -------------- Final Encounter: The End
final_encounter:
    mov eax, final_encounter_welcome
    call print_string
    call print_nl
    mov eax, final_encounter_msg
    call print_string
    call print_nl
    mov eax, final_encounter_msg_2
    call print_string
    call print_nl
    mov eax, final_encounter_msg_3
    call print_string
    call print_nl
    jmp determine_ending

;  -------------- Hidden Room: Item Selection Puzzle
hidden_room:
    ; Display hidden room entry message
    mov eax, hidden_room_msg          ; Message for entering the hidden room
    call print_string
    call print_nl

    ; Display item selection prompt
    mov eax, item_choice_msg          ; Message listing items to choose
    call print_string
    call print_nl

    mov dword [attempts], 3            ; Allow up to 3 attempts

hidden_room_loop:
    call get_choice                   ; Get player's choice

    ; Check the player's choice
    cmp dword [choice], 3              ; Correct item is the staff (option 3)
    je correct_item

    ; Decrement attempts and check for failure
    dec dword [attempts]
    cmp dword [attempts], 0
    je failed_attempts

    ; Display incorrect choice message
    mov eax, incorrect_item_msg       ; Message for incorrect item
    call print_string
    call print_nl
    jmp hidden_room_loop

correct_item:
    mov eax, correct_item_msg         ; Message for correct item selection
    call print_string
    call print_nl

    ; Set flag for having the staff
    mov dword [have_staff], 1      

    ; Progress to the next encounter
    inc dword [encounter_number]

    jmp game_loop                     ; Proceed back to the game loop


failed_attempts:
    mov eax, failed_item_msg          ; Message for failing all attempts
    call print_string
    call print_nl
    inc dword [encounter_number]    ; Send player back to Game loop
    jmp game_loop

good_ending:
    mov eax, good_ending_msg
    call print_string
    call print_nl
    mov eax, good_ending_msg_2
    call print_string
    call print_nl
    ;check if player has the staff
    cmp dword [have_staff], 1
    je  hidden_ending

    ;if player does not have the staff
    mov eax, good_ending_msg_3
    call print_string
    call print_nl
    jmp end_game

hidden_ending:
    mov eax, hidden_ending_msg
    call print_string
    call print_nl

    mov eax, good_ending_msg_3
    call print_string
    call print_nl
    jmp end_game

neutral_ending:
    mov eax, neutral_ending_msg
    call print_string
    call print_nl
    jmp end_game

bad_ending:
    mov eax, bad_ending_msg
    call print_string
    call print_nl
    jmp end_game

death:
    ; print border 3
    mov eax, border_msg_3
    call print_string
    call print_nl

    mov eax, death_msg
    call print_string
    call print_nl
    call print_nl
    mov eax, death_msg_2
    call print_string
    call print_nl
    call print_nl
    call print_nl
    mov eax, death_msg_3
    call print_string
    call print_nl


    ;reinitialize game state
    mov dword [health], 3
    mov dword [hubris], 1 
    mov dword [encounter_number], 1
    mov dword [right_choice_count], 0
    mov dword [branch_tracker], 0
    mov dword [attempts], 3
    mov dword [have_staff], 0
    mov dword [have_statue_stone], 0

    jmp game_loop

get_choice:
    call print_nl
    mov eax, choice_enter_msg
    call print_string
    call print_nl
    call read_int            ; Read input from user
    cmp eax, 1               ; Check if input is 1
    je valid_choice
    cmp eax, 2               ; Check if input is 2
    je valid_choice
	cmp eax, 3				 ; Check if input is 3
	je valid_choice
    ; Invalid input handling
    mov eax, invalidchoice_msg
    call print_string
    call print_nl
    jmp get_choice           ; Retry input

valid_choice:
    mov [choice], eax        ; Store valid input
    call print_nl
    ret


get_item_choice:
    call read_int
    mov [item_choice], al
    ret

update_health:
    mov eax, health_tracker_msg
    call print_string
    mov eax, [health]
    call print_int
    call print_nl
    ret

; Subprogram: Update and Display Hubris
update_hubris:
    mov eax, hubris_tracker_msg
    call print_string

    ; Determine and Display Hubris Level
    cmp dword [hubris], 0
    je hubris_bad
    cmp dword [hubris], 1
    je hubris_neutral
    cmp dword [hubris], 2
    je hubris_good
    ret

hubris_good:
    mov eax, hubris_good_msg
    call print_string
    call print_nl
    ret

hubris_neutral:
    mov eax, hubris_neutral_msg
    call print_string
    call print_nl
    ret

hubris_bad:
    mov eax, hubris_bad_msg
    call print_string
    call print_nl
    ret

; Subprogram: Decrement Health
decrement_health:
    dec dword [health]
    mov eax, health_loss_msg
    call print_string
    call print_nl
    cmp dword [health], 0
    jle death
    ret

; Subprogram: Increment Health
increment_health:
    inc dword [health]
    mov eax, health_gain_msg
    call print_string
    call print_nl
    ret

determine_ending:
    call update_health          ; Display final health
    call update_hubris          ; Display final hubris

    cmp dword [hubris], 2
    je good_ending
    cmp dword [hubris], 1
    je neutral_ending
    jmp bad_ending

roll_d6:
    ; Generate a random number between 1 and 6
    rdtsc						;stores the timestamp counter
	mov [seed], eax				;store timestamp value in seed variable
	mov ebx, [multiplier]		;load the multiplier
	mul ebx						;seed * multiplier
	add eax, [increment]		;add the increment
	xor edx, edx				;clear eax
	div dword [modulus]			;eax = quotient, edx = remainder
	mov [seed], edx				;update seed with new remainder

	mov eax, edx				;set eax to the updated seed
	xor edx, edx				;clear edx for division
	mov ecx, 6					;set the divisor to 6, represents sides of die
	div ecx						;eax = quotient, edx = remainder
	add edx, 1					;shift range to 1-6 rather than 0-5
	mov eax, edx				;move value into eax to return
    ret

battle:
    mov eax, choices_battle
    call print_string
    call print_nl
    call get_choice

    cmp dword [choice], 1       ; Fight
    je battle_fight
    cmp dword [choice], 2       ; Run
    je battle_run
    cmp dword [choice], 3       ; Taunt
    je battle_taunt

    ; Invalid choice handling
    mov eax, invalidchoice_msg
    call print_string
    jmp battle

battle_fight:
    call roll_d6                 ; Roll the dice
    cmp eax, 3                   ; Success if roll >= 3
    jl battle_fail               ; Jump if roll < 3
    mov eax, battle_fight_msg    ; Success message
    call print_string
    call print_nl
    ret                          ; Progress to next stage

battle_fail:
    call decrement_health        ; Take 1 damage
    mov eax, battle_loss_msg     ; Failure message
    call print_string
    call print_nl
    ret                          ; Retry or move to another decision

battle_run:
    mov eax, battle_run_success_msg      ; Message for running away
    call print_string
    call print_nl
    ret                         ; Loop back to dungeon navigation

battle_taunt:
    mov eax, taunt_attempt_msg
    call print_string
    call print_nl

    call roll_d6              ; Roll the dice
    cmp eax, 3                ; Check if roll >= 3
    jl taunt_fail             ; Jump to fail logic if roll < 3

    ; Success: Perform a counter-attack
    mov eax, taunt_success_msg
    call print_string
    call print_nl
    ret                       ; Move to the next step

taunt_fail:
    ; Fail: Enemy retaliates and deals damage
    mov eax, taunt_fail_msg
    call print_string
    call print_nl
    call decrement_health     ; Lose 1 health
    ret                       ; Retry or move to another decision

;helper function to print borders 2, 3 4 and 5
print_border_combo:
    call print_nl
    mov eax, border_msg_2
    call print_string
    call print_nl
    mov eax, border_msg_3
    call print_string
    call print_nl
    mov eax, border_msg_4
    call print_string
    call print_nl
    mov eax, border_msg_2
    call print_string
    call print_nl
    ret

; print borders 1, 2 and 5
print_border_combo_2:
    
    mov eax, border_msg
    call print_string
    call print_nl
    mov eax, border_msg_2
    call print_string
    call print_nl
    mov eax, border_msg_5
    call print_string
    call print_nl

    ret


end_game:
    mov eax, thank_you_msg
    call print_string
    call print_nl

mov eax, 0
mov esp, ebp
pop ebp
ret