/// @param text_id
function scr_game_text(_text_id) {
	
switch (_text_id) {

	case "npc 1":
		scr_text("Hello, i am NPC1")
		scr_text("Hello, i am NPC1")
		scr_text("Are you, alive?")
			scr_option("Yeah, i think i am alive", "npc 1 - yes")
			scr_option("No technically i dont think so", "npc 1 - no")
		break;
		case "npc 1 - yes":
			scr_text("Great, where do you think you are?")
			scr_option("I have no clue", "npc 1 - idk")
			scr_option("I am, in my dream?", "npc 1 - ik")
			break;
		case "npc 1 - no":
			scr_text("Heh, where do you think you are?")
			break;
		case "npc 1 - idk":
			scr_text("I guess you gotta go find out...?")
			break;
		case "npc 1 - ik":
			scr_text(".......")
			break;
	
	case "npc 2":
	scr_text("Hello, i am NPC2")
	scr_text("Hello, i am NPC2")
	scr_text("Hello, i am NPC2")
	
		break;

	}

} 
