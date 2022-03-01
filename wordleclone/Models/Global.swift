//
//  Global.swift
//  wordleclone
//
//  Created by Shameem Reza on 1/3/22.
//

import UIKit

enum Global {
    static var screenWidth: CGFloat {
        UIScreen.main.bounds.size.width
    }
    
    static var screenHeight: CGFloat {
        UIScreen.main.bounds.size.height
    }
    
    static var minDimension: CGFloat {
        min(screenWidth,screenHeight)
    }
    
    static var boardWidth: CGFloat {
        switch minDimension {
        case 0...320:
            return screenWidth - 55
        case 321...430:
            return screenWidth - 50
        case 431...1000:
            return 350
        default:
            return 500
        }
    }
    
    static var keyboardScale: CGFloat {
        switch minDimension {
        case 0...430:
            return screenWidth / 390
        case 431...1000:
            return CGFloat(1.2)
        default:
            return CGFloat(1.6)
        }
    }
    
    static let commonWords = ["ABASE", "ABATE", "ABBEY", "ABBOT", "ABEND", "ABHOR", "ABIDE", "ABLED", "ABLES", "ABODE", "ABORT", "ABOUT", "ABOVE", "ABUSE", "ABYSS", "ACHED", "ACHES", "ACIDS", "ACING", "ACORN", "ACRES", "ACTED", "ACTOR", "ADAGE", "ADAPT", "ADDED", "ADDER", "ADIEU", "ADIOS", "ADLIB", "ADMIT", "ADOPT", "ADORE", "ADORN", "ADULT", "AFFIX", "AFOOT", "AFORE", "AFOUL", "AGENT", "AGGRO", "AGILE", "AGONY", "AHEAD", "AILED", "AIMED", "AIRED", "AISLE", "AITCH", "ALARM", "ALBUM", "ALDER", "ALEPH", "ALERT", "ALGAE", "ALIBI", "ALIGN", "ALIKE", "ALLAY", "ALLEY", "ALLOT", "ALLOW", "ALLOY", "ALOFT", "ALOHA", "ALONE", "ALOOF", "ALOUD", "ALPHA", "AMAZE", "AMBER", "AMBLE", "AMIGO", "AMITY", "AMPLY", "AMUSE", "ANGEL", "ANGRY", "ANGST", "ANKLE", "ANNEX", "ANNOY", "ANNUL", "ANODE", "ANVIL", "AORTA", "APART", "APPLE", "APRON", "APTLY", "AREAS", "ARIAS", "ARMOR", "AROMA", "ARROW", "ARSED", "ASIDE", "ASKED", "ASKEW", "ATLAS", "ATOLL", "ATTIC", "AUDIO", "AUNTS", "AURAL", "AZURE", "BACKS", "BACON", "BAGEL", "BALSA", "BANAL", "BANJO", "BARDS", "BARED", "BARES", "BARFS", "BARGE", "BARNS", "BARON", "BASIC", "BASIL", "BASIS", "BASSY", "BATCH", "BATON", "BAYED", "BEACH", "BEATS", "BEAUX", "BEEFS", "BEEFY", "BEEPS", "BEERS", "BEERY", "BEETS", "BEGAN", "BEGAT", "BEGET", "BEGOT", "BEIGE", "BELIE", "BERET", "BESET", "BEVVY", "BILLS", "BIRDS", "BLADE", "BLAST", "BLIMP", "BLUNT", "BLURB", "BLURP", "BLURS", "BLURT", "BLUSH", "BOAST", "BOGEY", "BOLTS", "BONGO", "BOOST", "BOOTH", "BORON", "BOZOS", "BRAGS", "BREAD", "BROWN", "BUGLE", "BUZBY", "CABER", "CAMEL", "CANDY", "CAPER", "CAPON", "CARRY", "CARTS", "CARVE", "CEDAR", "CEDES", "CELEB", "CELLO", "CENTS", "CHARY", "CHEAP", "CHEAT", "CHEWY", "CHICK", "CHIME", "CHIMP", "CHING", "CIDER", "CLAMS", "CLEFT", "CLOSE", "CLOWN", "CLUNK", "COALS", "COBRA", "COCOA", "CODEC", "COLOR", "COLTS", "COMET", "CONDO", "CONGA", "COPSE", "CORGI", "CORKS", "COUPS", "COWED", "COWLS", "CRABS", "CROWD", "CROWS", "CURES", "CURIA", "CURIO", "CUTES", "DALEK", "DAWNS", "DECOR", "DECRY", "DEIFY", "DENIM", "DEPOT", "DESKS", "DICED", "DINAR", "DINED", "DINGY", "DISKS", "DIZZY", "DODOS", "DOILY", "DOLED", "DOUSE", "DOVES", "DRABS", "DRESS", "DRIBS", "DRIVE", "DROID", "DRONE", "DROOL", "DROOP", "DROPS", "DROSS", "DUCHY", "DUMPY", "DUNNY", "DUPER", "EBONY", "EIGHT", "EPOXY", "EXACT", "EXUDE", "FANGS", "FARTS", "FATHA", "FATTY", "FAVOR", "FAZED", "FECES", "FEINT", "FERNS", "FERRY", "FIBRO", "FIFTH", "FIFTY", "FILTH", "FINCH", "FINKS", "FLOSS", "FORTE", "FORTY", "FOULS", "FOURS", "FOXED", "FOXES", "FROCK", "FUCKS", "FUMES", "GABLE", "GAILY", "GAINS", "GALED", "GALES", "GALLS", "GAMED", "GAMER", "GAMES", "GAMMA", "GANGS", "GANJA", "GASES", "GASPS", "GATED", "GATES", "GAUDY", "GAUGE", "GAUNT", "GAUZE", "GAWKY", "GAZED", "GEARS", "GECKO", "GEEKS", "GEEKY", "GEESE", "GENES", "GENII", "GENTS", "GERMS", "GHOST", "GIANT", "GIDDY", "GIFTS", "GILDS", "GILLS", "GILTS", "GIMME", "GINGE", "GIRTH", "GISTS", "GIVEN", "GIVER", "GIVES", "GIZMO", "GLADE", "GLARE", "GLASS", "GLEAM", "GLOBE", "GLOVE", "GLUTS", "GNOME", "GOALS", "GOATS", "GODLY", "GOLEM", "GORES", "GORSE", "GOTTA", "GOUDA", "GOURD", "GOUTS", "GRAPE", "GRAVE", "GREEB", "GREEN", "GROPE", "GROSS", "GROVE", "GRUBS", "GRUFF", "GRUNT", "GUARD", "GULPS", "HARMS", "HARPS", "HAULS", "HERDS", "HERON", "HOARD", "HONOR", "HUMOR", "HYPES", "INKED", "JAWED", "JILTS", "JOUST", "KAPUT", "KEELS", "KINDA", "KRONA", "LAGER", "LAMBS", "LAPEL", "LATHS", "LATTE", "LAXLY", "LIKEN", "LINGO", "LIRAS", "LOADS", "LOAFS", "LOCUM", "LOLLS", "LONES", "LOONY", "LOPES", "LUCKS", "LURES", "MACED", "MATED", "MENDS", "MIAOW", "MILER", "MILKY", "MOANS", "MOCKS", "MONEY", "MOSSY", "MUCKY", "MULES", "MUSED", "MUSES", "MUTER", "MUTHA", "NATTY", "NEGRO", "NOBBY", "NOOKS", "NUKED", "OFFAL", "OKAYS", "OLIVE", "OOMPH", "ORGAN", "PACER", "PALED", "PALER", "PALLY", "PAPPA", "PARES", "PASTA", "PAWNS", "PECAN", "PEEKS", "PENDS", "PENIS", "PENNY", "PEONY", "PEPPY", "PIGGY", "PINED", "PIZZA", "PLIES", "PLOYS", "POKED", "PONCE", "POOPS", "PORKS", "PORKY", "PROMO", "PRONG", "PUFFY", "PUREE", "PYGMY", "QUOTH", "RAFTS", "RAGED", "RAVER", "REALM", "REBID", "REEKY", "RETAR", "RHINO", "ROAMS", "ROVED", "RUDDY", "RUDER", "RUNTS", "RUPEE", "SACKS", "SALCO", "SARGE", "SCALP", "SEALS", "SENNA", "SEPIA", "SERGE", "SERIF", "SEXED", "SEXES", "SHAGS", "SHARE", "SHARK", "SHARP", "SHAWM", "SHEAF", "SHITE", "SIDLE", "SIGMA", "SILLY", "SINES", "SINEW", "SIRED", "SLING", "SLOES", "SLUNG", "SNAKE", "SNARL", "SNIPS", "SOLES", "SORTA", "SPAMS", "SPASM", "SPEWS", "SPIKY", "SQUIT", "STAGS", "STANK", "STOAT", "STORK", "STYLI", "SWAMP", "TABOR", "TAMER", "TAPAS", "TAUPE", "TELLY", "TEMPO", "TENOR", "THETA", "THIGH", "THONG", "TIARA", "TIGER", "TIGON", "TILTS", "TOADS", "TOKEN", "TOLLS", "TOPAZ", "TOPSY", "TORSO", "TORTS", "TOTES", "TRAIT", "TRAMP", "TRITE", "TROLL", "TROMP", "TUNAS", "TUPLE", "TURBO", "TURDS", "TURVY", "TUSKS", "TUTOR", "TWAIN", "TWANG", "TWATS", "TWEAK", "TWEED", "TWEEN", "TWEET", "TWERP", "TWICE", "TWIPS", "TWIRL", "TWIST", "TWITS", "TYPED", "TYRES", "TYTHE", "UNARJ", "UNDID", "URGES", "URINE", "URNED", "USHER", "USING", "USUAL", "VAGUS", "VALUE", "VANES", "VASES", "VIOLA", "VIOLS", "VIPER", "VIRGE", "VISAS", "VIXEN", "VOILA", "VOLES", "WAGED", "WAIFS", "WAKED", "WALTZ", "WANED", "WANKS", "WAXED", "WEEDS", "WEEDY", "WEENY", "WEEPS", "WHARF", "WHINY", "WHIPS", "WHIRL", "WHIRR", "WHISH", "WHISK", "WHIST", "WHITE", "WHOLE", "WHOOP", "WHORE", "WHOSE", "WHUPS", "WIDER", "WIDTH", "WIELD", "WILLS", "WILTS", "WIMPS", "WINCE", "WINCH", "WINDS", "WINDY", "WINED", "WINES", "WINKS", "WIPES", "WIRED", "WIRES", "WISED", "WISER", "WISES", "WISHY", "WITCH", "WOKEN", "WOLDS", "WOMAN", "WOMEN", "WOODS", "WOOZY", "WORDS", "WORLD", "WORMS", "WORRY", "WORSE", "WOULD", "WOUND", "WOVEN", "WOWED", "WRAPS", "WRATH", "WREAK", "WRECK", "WRENS", "WRING", "WRIST", "WRITS", "WRONG", "WROTE", "WROTH", "WRUNG", "XENON", "YABBA", "YACKS", "YAHOO", "YANKS", "YARDS", "YARNS", "YAWNS", "YEARS", "YEAST", "YECCH", "YELLS", "YELPS", "YIELD", "YIKES", "YODEL", "YOLKS", "YONKS", "YOUNG", "YOURS", "YOUSE", "YOUTH", "YUCCA", "YUCKY", "YUMMY", "ZEBRA", "ZILCH", "ZIPPY", "ZONED", "ZONES", "ZOOMS"]
}
