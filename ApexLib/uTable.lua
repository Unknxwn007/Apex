local uTable = {}

local function mpx2()
    return "MP" .. stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1) .. "_"
end

uTable.Achievements = {
    [1] = "Welcome to Los Santos",
    [2] = "A Friendship Resurrected",
    [3] = "A Fair Day's Pay",
    [4] = "The Moment of Truth",
    [5] = "To Live or Die in Los Santos",
    [6] = "Diamond Hard",
    [7] = "Subversive",
    [8] = "Blitzed",
    [9] = "Small Town, Big Job",
    [10] = "The Government Gimps",
    [11] = "The Big One!",
    [12] = "Solid Gold, Baby!",
    [13] = "Career Criminal",
    [14] = "San Andreas Sightseer",
    [15] = "All's Fare in Love and War",
    [16] = "TP Industries Arms Race",
    [17] = "Multi-Disciplined",
    [18] = "From Beyond the Stars",
    [19] = "A Mystery, Solved",
    [20] = "Waste Management",
    [21] = "Red Mist",
    [22] = "Show Off",
    [23] = "Kifflom!",
    [24] = "Three Man Army",
    [25] = "Out of Your Depth",
    [26] = "Altruist Acolyte",
    [27] = "A Lot of Cheddar",
    [28] = "Trading Pure Alpha",
    [29] = "Pimp My Sidearm",
    [30] = "Wanted: Alive Or Alive",
    [31] = "Los Santos Customs",
    [32] = "Close Shave",
    [33] = "Off the Plane",
    [34] = "Three-Bit Gangster",
    [35] = "Making Moves",
    [36] = "Above the Law",
    [37] = "Numero Uno",
    [38] = "The Midnight Club",
    [39] = "Unnatural Selection",
    [40] = "Backseat Driver",
    [41] = "Run Like The Wind",
    [42] = "Clean Sweep",
    [43] = "Decorated",
    [44] = "Stick Up Kid",
    [45] = "Enjoy Your Stay",
    [46] = "Crew Cut",
    [47] = "Full Refund",
    [48] = "Dialling Digits",
    [49] = "American Dream",
    [50] = "A New Perspective",
    [51] = "Be Prepared",
    [52] = "In the Name of Science",
    [53] = "Dead Presidents",
    [54] = "Parole Day",
    [55] = "Shot Caller",
    [56] = "Four Way",
    [57] = "Live a Little",
    [58] = "Can't Touch This",
    [59] = "Mastermind",
    [60] = "Vinewood Visionary",
    [61] = "Majestic",
    [62] = "Humans of Los Santos",
    [63] = "First Time Director",
    [64] = "Animal Lover",
    [65] = "Ensemble Piece",
    [66] = "Cult Movie",
    [67] = "Location Scout",
    [68] = "Method Actor",
    [69] = "Cryptozoologist",
    [70] = "Getting Started",
    [71] = "The Data Breaches",
    [72] = "The Bogdan Problem",
    [73] = "The Doomsday Scenario",
    [74] = "A World Worth Saving",
    [75] = "Orbital Obliteration",
    [76] = "Elitist",
    [77] = "Masterminds",
}

uTable.CircoLocoMusic = {
    {name = "CircoLoco Record - Black EP", coord = v3(-2172.050, 1159.195, -24.372)},
    {name = "CircoLoco Record - Blue EP", coord = v3(955.299, 48.904, 112.553)},
    {name = "CircoLoco Record - Violet EP", coord = v3(-1618.841, -3010.627, -75.205)},
    {name = "CircoLoco Record - Green EP", coord = v3(2726.694, -387.484, -48.993)}
}
uTable.KennyMusic = {
    {name = "Kenny's Backyard Boogie - #1", coord = v3(-2163.025, 1083.473, -24.362)},
    {name = "Kenny's Backyard Boogie - #2", coord = v3(-2180.532, 1082.276, -24.367)},
    {name = "Kenny's Backyard Boogie - #3", coord = v3(-2162.992, 1089.790, -24.363)},
    {name = "Kenny's Backyard Boogie - #4", coord = v3(-2162.770, 1115.913, -24.371)}
}
uTable.NezMusic = {
    {name = "NEZ - You Wanna?", coord = v3(-860.241, -229.980, 61.016)},
    {name = "NEZ ft. Schoolboy Q - Let's Get It", coord = v3(25.010, 521.276, 170.227)}
}

uTable.clothingIDs = {
    36699, 36700, 36701, 36702, 36703, 36704, 36705, 36706, 36707, 36708,
    36709, 36710, 36711, 36712, 36713, 36714, 36715, 36716, 36717, 36718,
    36719, 36720, 36721, 36722, 36723, 36724, 36725, 36726, 36727, 36728,
    36729, 36730, 36731, 36732, 36733, 36734, 36735, 36736, 36737, 36738,
    36739, 36740, 36741, 36742, 36743, 36744, 36745, 36746, 36747, 36748,
    36749, 36750, 36751, 36752, 36753, 36754, 36755, 36756, 36757, 36758,
    36759, 36760, 36761, 36762, 36763, 36764, 36765, 36766, 36767, 36768,
    36769, 36770, 36774, 36775, 36776, 36777, 36778, 36779, 36780, 36781,
    36782, 36783, 36784, 36786, 36787, 36788, 36809, 41593, 41656, 41657,
    41658, 41659, 41671, 41894, 41897, 41898, 41899, 41900, 41901, 41902,
    41915, 41916, 41917, 41918, 41919, 41920, 41921, 41922, 41923, 41924,
    41925, 41926, 41927, 41928, 41929, 41930, 41931, 41932, 41933, 41934,
    41935, 41936, 41937, 41938, 41939, 41940, 41941, 41943, 41944, 41945,
    41946, 41947, 41948, 41949, 41950, 41951, 41952, 41953, 41954, 41955,
    41956, 41957, 41958, 41959, 41960, 41961, 41962, 41963, 41964, 41965,
    41966, 41967, 41968, 41969, 41970, 41971, 41972, 41973, 41974, 41975,
    41976, 41977, 41978, 41979, 41980, 41994, 41996, 34737, 36670, 28203,   
    34378, 34379, 34380, 34381, 34382, 34383, 34384, 34385, 34386, 34387,
    34388, 34389, 34390, 34391, 34392, 34393, 34394, 34395, 34396, 34397,
    34398, 34399, 34400, 34401, 34402, 34403, 34404, 34405, 34406, 34407,
    34408, 34409, 34410, 34411, 34415, 34416, 34417, 34418, 34419, 34420,
    34421, 34422, 34423, 34424, 34425, 34426, 34427, 34428, 34429, 34430,
    34431, 34432, 34433, 34434, 34435, 34436, 34437, 34438, 34439, 34440,
    34441, 34442, 34443, 34444, 34445, 34446, 34447, 34448, 34449, 34450,
    34451, 34452, 34453, 34454, 34455, 34456, 34457, 34458, 34459, 34460,
    34461, 34462, 34463, 34464, 34465, 34466, 34467, 34468, 34469, 34470,
    34471, 34472, 34473, 34474, 34475, 34476, 34477, 34478, 34479, 34480,
    34481, 34482, 34483, 34484, 34485, 34486, 34487, 34488, 34489, 34490,
    34491, 34492, 34493, 34494, 34495, 34496, 34497, 34498, 34499, 34500,
    34501, 34502, 34503, 34504, 34505, 34506, 34507, 34508, 34509, 34510,
    34703, 34704, 34705, 34730, 34731, 34732, 34733, 34734, 34735, 34736,
    36699, 36700, 36701, 36702, 36703, 36704, 36705, 36706, 36707, 36708,
    36709, 36710, 36711, 36712, 36713, 36714, 36715, 36716, 36717, 36718,
    36719, 36720, 36721, 36722, 36723, 36724, 36725, 36726, 36727, 36728,
    36729, 36730, 36731, 36732, 36733, 36734, 36735, 36736, 36737, 36738,
    36739, 36740, 36741, 36742, 36743, 36744, 36745, 36746, 36747, 36748,
    36749, 36750, 36751, 36752, 36753, 36754, 36755, 36756, 36757, 36758,
    36759, 36760, 36761, 36762, 36763, 36764, 36765, 36766, 36767, 36768,
    36769, 36770, 36774, 36775, 36776, 36777, 36778, 36779, 36780, 36781,
    36782, 36783, 36784, 36786, 36787, 36788, 36809, 41593, 41656, 41657,
    41658, 41659, 41671, 41894, 41897, 41898, 41899, 41900, 41901, 41902,
    41915, 41916, 41917, 41918, 41919, 41920, 41921, 41922, 41923, 41924,
    41925, 41926, 41927, 41928, 41929, 41930, 41931, 41932, 41933, 41934,
    41935, 41936, 41937, 41938, 41939, 41940, 41941, 41943, 41944, 41945,
    41946, 41947, 41948, 41949, 41950, 41951, 41952, 41953, 41954, 41955,
    41956, 41957, 41958, 41959, 41960, 41961, 41962, 41963, 41964, 41965,
    41966, 41967, 41968, 41969, 41970, 41971, 41972, 41973, 41974, 41975,
    41976, 41977, 41978, 41979, 41980, 41994, 41996, 30699, 30700, 30701, 
    31708, 31709, 31710, 31711, 31712, 31713, 31714, 30702, 30703, 30704,
    31736, 31760, 31761, 31762, 31763, 31764, 31776, 31777, 31789, 31790, 
    31766, 31767, 31768, 31769, 31770, 31771, 31772, 31773, 31774, 31775, 
    31779, 31780, 31781, 31782, 31783, 31784, 31785, 31786, 31787, 31788, 
    31805, 31806, 31807, 31808, 31791, 31792, 31793, 31820, 31821, 31822,
    31810, 31811, 31812, 31813, 31814, 31815, 31816, 31817, 31818, 31819, 
    31826, 31827, 31828, 31829, 31830, 31831, 31832, 31833, 31834, 31835,
    31841, 31842, 31843, 31844, 31845, 31846, 31847, 31848, 31849, 31850,
    31856, 31857, 31858, 31851, 31852, 31853, 31854, 31855, 31937, 31938,
    31860, 31861, 31862, 31863, 31836, 31837, 31838, 31839, 31840, 31943,
    31865, 31866, 31867, 31868, 31930, 31931, 31932, 31933, 31935, 31936, 
    31870, 31871, 31872, 31873, 31874, 31875, 31876, 31877, 31878, 31879,
    31885, 31886, 31887, 31888, 31889, 31890, 31891, 31892, 31893, 31894,
    31900, 31901, 31902, 31903, 31904, 31905, 31906, 31907, 31908, 31909, 
    31915, 31916, 31917, 31918, 31919, 31920, 31921, 31922, 31923, 31924, 
    31940, 31941, 31942, 31823, 31824, 31945, 31946, 31947, 31948, 31899,
    31925, 31926, 31927, 31928, 31910, 31911, 31912, 31913, 31914, 31884,
    31880, 31881, 31882, 31883, 31895, 31896, 31897, 31898, 28185, 28186,
    36699, 36700, 36701, 36702, 36703, 36704, 36705, 36706, 36707, 36708,
    36709, 36710, 36711, 36712, 36713, 36714, 36715, 36716, 36717, 36718,
    36719, 36720, 36721, 36722, 36723, 36724, 36725, 36726, 36727, 36728,
    36729, 36730, 36731, 36732, 36733, 36734, 36735, 36736, 36737, 36738,
    36739, 36740, 36741, 36742, 36743, 36744, 36745, 36746, 36747, 36748,
    36749, 36750, 36751, 36752, 36753, 36754, 36755, 36756, 36757, 36758,
    36759, 36760, 36761, 36762, 36763, 36764, 36765, 36766, 36767, 36768,
    36769, 36770, 36774, 36775, 36776, 36777, 36778, 36779, 36780, 36781,
    36782, 36783, 36784, 36786, 36787, 36788, 36809, 41593, 41656, 41657,
    41658, 41659, 41671, 41894, 41897, 41898, 41899, 41900, 41901, 41902,
    41915, 41916, 41917, 41918, 41919, 41920, 41921, 41922, 41923, 41924,
    41925, 41926, 41927, 41928, 41929, 41930, 41931, 41932, 41933, 41934,
    41935, 41936, 41937, 41938, 41939, 41940, 41941, 41943, 41944, 41945,
    41946, 41947, 41948, 41949, 41950, 41951, 41952, 41953, 41954, 41955,
    41956, 41957, 41958, 41959, 41960, 41961, 41962, 41963, 41964, 41965,
    41966, 41967, 41968, 41969, 41970, 41971, 41972, 41973, 41974, 41975,
    41976, 41977, 41978, 41979, 41980, 41994, 41996, 34737, 36670, 28173,
    34378, 34379, 34380, 34381, 34382, 34383, 34384, 34385, 34386, 34387,
    34388, 34389, 34390, 34391, 34392, 34393, 34394, 34395, 34396, 34397,
    34398, 34399, 34400, 34401, 34402, 34403, 34404, 34405, 34406, 34407,
    34408, 34409, 34410, 34411, 34415, 34416, 34417, 34418, 34419, 34420,
    34421, 34422, 34423, 34424, 34425, 34426, 34427, 34428, 34429, 34430,
    34431, 34432, 34433, 34434, 34435, 34436, 34437, 34438, 34439, 34440,
    34441, 34442, 34443, 34444, 34445, 34446, 34447, 34448, 34449, 34450,
    34451, 34452, 34453, 34454, 34455, 34456, 34457, 34458, 34459, 34460,
    34461, 34462, 34463, 34464, 34465, 34466, 34467, 34468, 34469, 34470,
    34471, 34472, 34473, 34474, 34475, 34476, 34477, 34478, 34479, 34480,
    34481, 34482, 34483, 34484, 34485, 34486, 34487, 34488, 34489, 34490,
    34491, 34492, 34493, 34494, 34495, 34496, 34497, 34498, 34499, 34500,
    34501, 34502, 34503, 34504, 34505, 34506, 34507, 34508, 34509, 34510,
    34703, 34704, 34705, 34730, 34731, 34732, 34733, 34734, 34735, 34736,
    36699, 36700, 36701, 36702, 36703, 36704, 36705, 36706, 36707, 36708,
    36709, 36710, 36711, 36712, 36713, 36714, 36715, 36716, 36717, 36718,
    36719, 36720, 36721, 36722, 36723, 36724, 36725, 36726, 36727, 36728,
    36729, 36730, 36731, 36732, 36733, 36734, 36735, 36736, 36737, 36738,
    36739, 36740, 36741, 36742, 36743, 36744, 36745, 36746, 36747, 36748,
    36749, 36750, 36751, 36752, 36753, 27194, 27195, 27206, 27207, 28174,
    27184, 27185, 27186, 27187, 27188, 27189, 27190, 27191, 27192, 27193,
    27196, 27197, 27198, 27199, 27200, 27201, 27202, 27203, 27204, 27205, 
    27208, 27209, 27210, 27211, 27212, 27213, 27247, 28158, 28171, 28172, 
    28175, 28176, 28177, 28178, 28179, 28180, 28181, 28182, 28183, 28184, 
    28187, 28188, 28189, 28190, 28191, 28197, 28198, 28199, 28200, 28201, 
    28204, 28205, 28206, 28207, 28208, 28209, 28210, 28211, 28212, 28213, 
    28216, 28217, 28218, 28219, 28220, 28221, 28222, 28224, 28225, 28226, 
    28230, 28231, 28232, 28233, 28234, 28235, 28236, 28237, 28238, 28239, 
    28242, 28243, 28244, 28245, 28246, 28247, 28248, 28249, 28254, 28255, 
    30255, 30256, 30257, 30258, 30259, 30260, 30261, 30262, 30263, 30264, 
    30267, 30268, 30269, 30270, 30271, 30272, 30273, 30274, 30275, 30276, 
    30279, 30280, 30281, 30282, 30283, 30284, 30285, 30286, 30287, 30288, 
    30291, 30292, 30293, 30294, 30295, 30289, 30290, 30277, 30278, 30265,
    30266, 30240, 30254, 28240, 28241, 28227, 28229, 28214, 28215, 28202, 
    25516, 28222, 26968, 26969, 26970, 26971, 26972, 26973, 26974, 26975, 
    26978, 26979, 26980, 26981, 26982, 26983, 26984, 26985, 26986, 26987, 
    26990, 26991, 26992, 26993, 26994, 26995, 26996, 26997, 26998, 26999, 
    27002, 27003, 27004, 27005, 27006, 27007, 27008, 27009, 27010, 27011, 
    27014, 27015, 27016, 27017, 27018, 27019, 27020, 27021, 27022, 27023, 
    27026, 27027, 27028, 27029, 27030, 27031, 27032, 27033, 27034, 27035, 
    27038, 27039, 27040, 27041, 27042, 27043, 27044, 27045, 27046, 27047, 
    27050, 27051, 27052, 27053, 27054, 27055, 27056, 27057, 27058, 27059, 
    27062, 27063, 27064, 27065, 27066, 27067, 27068, 27069, 27070, 27071, 
    27074, 27075, 27076, 27077, 27078, 27079, 27080, 27081, 27082, 27083, 
    27086, 27087, 27088, 27109, 27110, 27111, 27112, 27113, 27114, 27115, 
    27122, 27123, 27124, 27125, 27126, 27127, 27128, 27129, 27130, 27131, 
    27134, 27135, 27136, 27137, 27138, 27139, 27140, 27141, 27142, 27143, 
    27144, 27145, 27132, 27133, 27120, 27121, 27084, 27085, 27072, 27073,
    27060, 27061, 27048, 27049, 27036, 27037, 27024, 27025, 27012, 27013,
    27000, 27001, 26988, 26989, 26976, 26977, 25254, 25255, 25266, 25267,
    25244, 25245, 25246, 25247, 25248, 25249, 25250, 25251, 25252, 25253,
    25256, 25257, 25258, 25259, 25260, 25261, 25262, 25263, 25264, 25265, 
    25268, 25269, 25270, 25271, 25272, 25273, 25274, 25275, 25276, 25277, 25278,
    25280, 25281, 25282, 25283, 25284, 25285, 25286, 25287, 25288, 25289, 25290, 25291,
    25292, 25293, 25294, 25295, 25296, 25297, 25298, 25299, 25300, 25301, 25302, 25303,
    25304, 25305, 25306, 25307, 25308, 25309, 25310, 25311, 25312, 25313, 25314, 25315,
    25316, 25317, 25318, 25319, 25320, 25321, 25322, 25323, 25324, 25325, 25326, 25327,
    25328, 25329, 25330, 25331, 25332, 25333, 25334, 25335, 25336, 25337, 25338, 25339,
    25340, 25341, 25342, 25343, 25344, 25345, 25346, 25347, 25348, 25349, 25350, 25351,
    25352, 25353, 25354, 25355, 25356, 25357, 25358, 25359, 25360, 25361, 25362, 25363,
    25364, 25365, 25366, 25367, 25368, 25369, 25370, 25371, 25372, 25373, 25374, 25375,
    25376, 25377, 25378, 25379, 25380, 25381, 25382, 25383, 25384, 25385, 25386, 25387,
    25388, 25389, 25390, 25391, 25392, 25393, 25394, 25395, 25396, 25397, 25398, 25399,
    25400, 25405, 25407, 25408, 25409, 25410, 25411, 25412, 25413, 25414, 25415, 25416,
    25417, 25418, 25419, 25420, 25421, 25422, 25423, 25424, 25425, 25426, 25427, 25428,
    25429, 25430, 25431, 25432, 25433, 25434, 25435, 25436, 25437, 25438, 25439, 25440,
    25441, 25442, 25443, 25444, 25445, 25446, 25447, 25448, 25449, 25450, 25451, 25452,
    25453, 25454, 25455, 25456, 25457, 25458, 25459, 25460, 25461, 25462, 25463, 25464,
    25465, 25466, 25467, 25468, 25469, 25470, 25471, 25472, 25473, 25474, 25475, 25476,
    25477, 25478, 25479, 25480, 25481, 25482, 25483, 25484, 25485, 25486, 25487, 25488,
    25489, 25490, 25491, 25492, 25493, 25494, 25495, 25496, 25497, 25498, 25499, 25500,
    25501, 25502, 25503, 25504, 25505, 25506, 25507, 25508, 25509, 25510, 25511, 25279,
    25018, 25019, 25020, 25021, 25022, 25023, 25024, 25025, 25026, 25027, 25028, 25029,
    25030, 25031, 25032, 25033, 25034, 25035, 25036, 25037, 25038, 25039, 25040, 25041,
    25042, 25043, 25044, 25045, 25046, 25047, 25048, 25049, 25050, 25051, 25052, 25053,
    25054, 25055, 25056, 25057, 25058, 25059, 25060, 25061, 25062, 25063, 25064, 25065,
    25066, 25067, 25068, 25069, 25070, 25071, 25072, 25073, 25074, 25075, 25076, 25077,
    25078, 25079, 25080, 25081, 25082, 25083, 25084, 25085, 25086, 25087, 25088, 25089,
    25090, 25091, 25092, 25093, 25094, 25095, 25096, 25097, 25098, 25099, 25101, 25102,
    25103, 25104, 25105, 25106, 25107, 25108, 25109, 25111, 25112, 25113, 25114, 25115,
    25116, 25117, 25118, 25119, 25120, 25121, 25122, 25123, 25124, 25125, 25126, 25127,
    25128, 25129, 25130, 25131, 25132, 25133, 25134, 25136, 25137, 25138, 25139, 25140,
    25141, 25142, 25143, 25144, 25145, 25146, 25147, 25148, 25149, 25150, 25151, 25152,
    25153, 25154, 25155, 25156, 25157, 25158, 25159, 25160, 25161, 25162, 25163, 25164,
    25165, 25166, 25167, 25168, 25169, 25170, 25171, 25172, 25173, 25174, 25175, 25176,
    25177, 25178, 25179, 25181, 25182, 25183, 25184, 25185, 25186, 25187, 25188, 25189,
    25190, 25191, 25192, 25193, 25194, 25195, 25196, 25197, 25198, 25199, 25200, 25201,
    25202, 25203, 25204, 25205, 25206, 25207, 25208, 25209, 25210, 25211, 25212, 25213,
    25214, 25215, 25216, 25217, 25218, 25219, 25220, 25221, 25222, 25223, 25224, 25225,
    25226, 25227, 25228, 25229, 25230, 25231, 25232, 25233, 25234, 25235, 25236, 25237,
    15388, 15389, 15390, 15391, 15392, 15393, 15394, 15395, 15396, 15397, 15398, 15399, 15400,
    15401, 15402, 15403, 15404, 15405, 15406, 15407, 15408, 15409, 15410, 15411, 15412, 15413,
    15414, 15415, 15416, 15417, 15418, 15419, 15420, 15421, 15422, 15423, 15425, 15426, 15427,
    15428, 15429, 15430, 15431, 15432, 15433, 15434, 15435, 15436, 15437, 15438, 15439, 15447,
    15448, 15449, 15450, 15451, 15452, 15453, 15454, 15455, 15456, 15457, 15458, 15459, 15460,
    15461, 15462, 15463, 15464, 15465, 15466, 15467, 15468, 15469, 15470, 15471, 15472, 15473,
    15474, 15491, 15492, 15493, 15494, 15495, 15496, 15497, 15498, 15499, 15552, 15553, 15554,
    15555, 15556, 15557, 15558, 15559, 15560, 18099, 18121, 18122, 18123, 18124, 18125, 18134,
    18135, 18136, 18137, 22124, 22125, 22126, 22127, 22128, 22129, 22130, 22131, 22132, 22137,
    22138, 22139, 22147, 22148, 22149, 22150, 22151, 22152, 22153, 22154, 22155, 22156, 22157,
    22158, 22159, 22160, 22161, 22162, 22163, 22164, 22165, 22166, 22167, 22168, 22169, 22170,
    22171, 22172, 22173, 22174, 22175, 22176, 22177, 22178, 24963, 24964, 24965, 24966, 24967,
    24968, 24969, 24970, 24971, 24972, 24973, 24974, 24975, 24976, 24977, 24978, 24979, 24980,
    24981, 24982, 24983, 24984, 24985, 24986, 24987, 24988, 24989, 24990, 24991, 24992, 24993,
    24994, 24995, 24996, 24997, 24998, 24999, 25000, 25002, 25005, 25006, 25009, 6082, 6083,
    4247, 4248, 4249, 4250, 4251, 4252, 4253, 4254, 4255, 4256, 4257, 4258, 4259, 4260, 4261, 
    4262, 4263, 4264, 4265, 4266, 4267, 4268, 4269, 4308, 4309, 4310, 4311, 4312, 4313, 4314, 
    4300, 4301, 4302, 4303, 4304, 4305, 4306, 4307, 4323, 4324, 4325, 4326, 4327, 7481, 7495,
    4315, 4316, 4317, 4318, 4319, 4320, 4321, 4322, 4333, 4334, 4335, 7479, 7480, 7528, 7601,
    7467, 7468, 7469, 7470, 7471, 7472, 7473, 7474, 7475, 7476, 7477, 7478, 7551, 7599, 7600,
    7482, 7483, 7484, 7485, 7486, 7487, 7488, 7489, 7490, 7491, 7492, 7493, 7494, 7597, 7598,  
    7515, 7516, 7517, 7518, 7519, 7520, 7521, 7522, 7523, 7524, 7525, 7526, 7527, 7595, 7596,
    9362, 9363, 9364, 9365, 9366, 9367, 9368, 9369, 9370, 9371, 9372, 9373, 9374, 9375, 9443,
    9376, 9377, 9378, 9379, 9380, 9381, 9382, 9383, 9384, 9385, 15381, 15382, 9480, 9481,
    9426, 9427, 9428, 9429, 9430, 9431, 9432, 9433, 9434, 9435, 9436, 9437, 9438, 9439, 9440,
    9462, 9463, 9464, 9465, 9466, 9467, 9468, 9469, 9470, 9471, 9472, 9473, 9474, 9475, 9476,
    9477, 9478, 9479, 110, 111, 112, 113, 115, 124, 129, 135, 136, 137, 3597, 3598, 3599,
    3593, 3594, 3595, 3596, 3604, 3605, 3608, 3609, 3616, 3750, 3780, 3781, 3795, 3796, 
    3770, 3771, 3772, 3773, 3774, 3775, 3776, 3777, 3778, 3779, 3800, 3801, 3802, 3798,
    3783, 3784, 3785, 3786, 3787, 3788, 3789, 3790, 3791, 3792, 3793, 3794, 3799, 3797
}

uTable.AchievementIDs = {
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
    33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 
    63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78
}

uTable.vanityPlates = {
    {name = "E-Cola", id = 6},
    {name = "Las Venturas", id = 7},
    {name = "Liberty City", id = 8},
    {name = "LS Car Meet", id = 9},
    {name = "Panic", id = 10},
    {name = "Pounders", id = 11},
    {name = "Sprunk", id = 12}
}

uTable.unreleasedVehicles = {
    23096, 14944, 35450, 35452, 35530, 35428, 35606, 35612, 17686, 17702, 35668, 35492, 35494, 35496, 35544, 
    35652, 35578, 35574, 35572, 35590, 28910, 35580, 35412, 35630, 35632, 35488, 35444, 35648, 35650, 24303, 
    35480, 17520, 26040, 35414, 35416, 35418, 35420, 35404, 19350, 19351, 23095, 17519, 35446, 35410, 22108, 
    17694, 26042, 35510, 35532, 35576, 26060, 35534, 35482, 17685, 35478, 35402, 35516, 24294, 17688, 17700, 
    35546, 35512, 35514, 35430, 35490, 35666, 35644, 35602, 35448, 35642, 35638, 35560, 20422, 35660, 35656, 
    23087, 35664, 35552, 26059, 23094, 35536, 35592, 23088, 28941, 35484, 35620, 35538, 35614, 35508, 26056, 
    35518, 35466, 35440, 35636, 35582, 35662, 29606, 28909, 26052, 17522, 35432, 35634, 35676, 24306, 14939, 
    26058, 35550, 26069, 35522, 35520, 26070, 35670, 35554, 35640, 26062, 35564, 35646, 35506, 35608, 35674, 
    23091, 35584, 35434, 35436, 22112, 17693, 17703, 35562, 17513, 35586, 35610, 22111, 23089, 23093, 35672, 
    35600, 35456, 35472, 35548, 35568, 20424, 35588, 26066, 35542, 35540, 17696, 35594, 23092, 23085, 35598, 
    35424, 35426, 35626, 35658, 29607, 35524, 35654, 35438, 35558, 24387, 35618, 35462, 35460, 35458, 35624, 
    23082, 35422, 35628, 35604, 24386, 35616, 35406, 29953, 21306, 17701, 26043, 17511, 35486, 35556, 27027, 
    35454, 30434, 35566, 23097, 35476, 35622, 35596, 17699, 21304, 35502, 35504, 35474, 35526, 35528, 26057, 
    17684, 26054, 35678
}

uTable.autoShopRobberies = {
    {name = "The Union Depository Contract", subName = "unionContract" },
    {name = "The Superdollar Deal", subName = "superDollar" },
    {name = "The Bank Contract", subName = "bankContract" },
    {name = "The ECU Job", subName = "ecuJob" },
    {name = "The Prison Contract", subName = "prisonContract" },
    {name = "The Agency Deal", subName = "agencyDeal" },
    {name = "The Lost Contract", subName = "lostContract" },
    {name = "The Data Contract", subName = "dataContract" },
}

uTable.agencyContracts = {
    { name = "Asset Protection", stat = "FIXER_SC_ASSETS_PROTECTED" },
    { name = "Gang Termination", stat = "FIXER_SC_GANG_TERMINATED" },
    { name = "Liquidize Assets", stat = "FIXER_SC_EQ_DESTROYED" },
    { name = "Recover Valuables", stat = "FIXER_SC_VAL_RECOVERED" },
    { name = "Rescue Operation", stat = "FIXER_SC_VIP_RESCUED" },
    { name = "Vehicle Recovery", stat = "FIXER_SC_VEH_RECOVERED" },

    { name = "Payphone Hits", stat = "FIXERTELEPHONEHITSCOMPL"},
}
uTable.agencyContracts2 = {
    { name = "Contracts done", stat = "TUNER_COUNT"},
    { name = "Contracts earnings", stat = "TUNER_EARNINGS"},
}

uTable.compStats = {
    { name = "Races Won", stat = "MPPLY_TOTAL_RACES_WON"},
    { name = "Races Lost", stat = "MPPLY_TOTAL_RACES_LOST"},
    { name = "Custom Race Wins", stat = "MPPLY_TOTAL_CUSTOM_RACES_WON"},
    { name = "Golf Wins", stat = "MPPLY_GOLF_WINS"},
    { name = "Golf Losses", stat = "MPPLY_GOLF_LOSSES"},
    { name = "Dart Wins", stat = "MPPLY_DARTS_TOTAL_WINS"},
    { name = "Tennis Matches Won", stat = "MPPLY_TENNIS_MATCHES_WON"},
    { name = "Tennis Matches Lost", stat = "MPPLY_TENNIS_MATCHES_LOST"},
    { name = "Base Jump Wins", stat = "MPPLY_BJ_WINS"},
    { name = "Base Jump Losses", stat = "MPPLY_BJ_LOST"},
    { name = "Deathmatch Wins", stat = "MPPLY_TOTAL_DEATHMATCH_WON"},
    { name = "Deathmatch Losses", stat = "MPPLY_TOTAL_DEATHMATCH_LOST"},
    { name = "Team Deathmatch Wins", stat = "MPPLY_TOTAL_TDEATHMATCH_WON"},
    { name = "Team Deathmatch Losses", stat = "MPPLY_TOTAL_TDEATHMATCH_LOST"},
    --{ name = "", stat = ""},
}
uTable.compStatsPP = { -- per player
    { name = "Impromptu Races Won", stat = "IMPROMPTU_RACES_WON"},
}

--RAILGUN_KILLS | ASLTR_MK2_KILLS | CBNR_MK2_KILLS | HCK_DVE_KILLS | YACHT_NAME, YACHT_NAME2 |  | BLRIFLE_MK2_KILLS | MKRIFLE_MK2_KILLS | 
--REV_MK2_KILLS | REV_DA_KILLS | 
uTable.meleeStats = {
    { name = "Antique Cavalry Dagger", killsWith = "DAGGER_KILLS", deathsBy = "DAGGER_DEATHS" },
    { name = "Baseball Bat", killsWith = "BAT_KILLS", deathsBy = "BAT_DEATHS" },
    { name = "Bottle", killsWith = "BOTTLE_KILLS", deathsBy = "BOTTLE_DEATHS"},
    { name = "Crowbar", killsWith = "CROWBAR_KILLS", deathsBy = "CROWBAR_DEATHS"},
    { name = "Flashlight", killsWith = "FLASHLIGHT_KILLS", deathsBy = "FLASHLIGHT_DEATHS"},
    { name = "Golf Club", killsWith = "GCLUB_KILLS", deathsBy = "GCLUB_DEATHS"},
    { name = "Hammer", killsWith = "HAMMER_KILLS", deathsBy = "HAMMER_DEATHS"},
    { name = "Hatchet", killsWith = "HATCHET_KILLS", deathsBy = "HATCHET_DEATHS"},
    { name = "Knuckle Duster", killsWith = "KNUCKLE_KILLS", deathsBy = "KNUCKLE_DEATHS"},
    { name = "Knife", killsWith = "KNIFE_KILLS", deathsBy = "KNIFE_DEATHS"},
    { name = "Machete", killsWith = "MACHETE_KILLS", deathsBy = "MACHETE_DEATHS"},
    { name = "Switchblade", killsWith = "SWBLADE_KILLS", deathsBy = "SWBLADE_DEATHS"},
    { name = "Nightstick", killsWith = "NIGHTSTICK_KILLS", deathsBy = "NIGHTSTICK_DEATHS"},
    { name = "Wrench", killsWith = "WRENCH_KILLS", deathsBy = "WRENCH_DEATHS"},
    { name = "Battle Axe", killsWith = "BATTLEAXE_KILLS", deathsBy = "BATTLEAXE_KILLS"},
    { name = "Pool Cue", killsWith = "POOLCUE_KILLS", deathsBy = "POOLCUE_DEATHS"},
    { name = "Stone Hatchet", killsWith = "SHATCHET_KILLS", deathsBy = "SHATCHET_DEATHS"},
    --{ name = "Candy Cane", killsWith = "", deathsBy = ""},
}
uTable.pistolStats = {
    { name = "Pistol", killsWith = "PISTOL_KILLS", deathsBy = "PISTOL_DEATHS", headshots = "PISTOL_HEADSHOTS", shots = "PISTOL_SHOTS", hits = "PISTOL_HITS" },
    { name = "Pistol MK II", killsWith = "PIST_MK2_KILLS", deathsBy = "PIST_MK2_DEATHS", headshots = "PIST_MK2_HEADSHOTS", shots = "PIST_MK2_SHOTS", hits = "PIST_MK2_HITS" },
    { name = "Combat Pistol", killsWith = "CMBTPISTOL_KILLS", deathsBy = "CMBTPISTOL_DEATHS", headshots = "CMBTPISTOL_HEADSHOTS", shots = "CMBTPISTOL_SHOTS", hits = "CMBTPISTOL_HITS" },
    { name = "AP Pistol", killsWith = "APPISTOL_KILLS", deathsBy = "APPISTOL_DEATHS", headshots = "APPISTOL_HEADSHOTS", shots = "APPISTOL_SHOTS", hits = "APPISTOL_HITS" },
    { name = "Pistol .50", killsWith = "PISTOL50_KILLS", deathsBy = "PISTOL50_DEATHS", headshots = "PISTOL50_HEADSHOTS", shots = "PISTOL50_SHOTS", hits = "PISTOL50_HITS" },
    { name = "SNS Pistol", killsWith = "SNSPISTOL_KILLS", deathsBy = "SNSPISTOL_DEATHS", headshots = "SNSPISTOL_HEADSHOTS", shots = "SNSPISTOL_SHOTS", hits = "SNSPISTOL_HITS" },
    { name = "SNS Pistol MK II", killsWith = "SNSPIST_MK2_KILLS", deathsBy = "SNSPIST_MK2_DEATHS", headshots = "SNSPIST_MK2_HEADSHOTS", shots = "SNSPIST_MK2_SHOTS", hits = "SNSPIST_MK2_HITS" },
    { name = "Heavy Pistol", killsWith = "HVYPISTOL_KILLS", deathsBy = "HVYPISTOL_DEATHS", headshots = "HVYPISTOL_HEADSHOTS", shots = "HVYPISTOL_SHOTS", hits = "HVYPISTOL_HITS" },
    { name = "Vintage Pistol", killsWith = "VPISTOL_KILLS", deathsBy = "VPISTOL_DEATHS", headshots = "VPISTOL_HEADSHOTS", shots = "VPISTOL_SHOTS", hits = "VPISTOL_HITS" },
    { name = "Flare Gun", killsWith = "FLAREGUN_KILLS", deathsBy = "FLAREGUN_DEATHS", headshots = "FLAREGUN_HEADSHOTS", shots = "FLAREGUN_SHOTS", hits = "FLAREGUN_HITS" },
    --Marksman Pistol
    { name = "Heavy Revolver", killsWith = "REVOLVER_KILLS", deathsBy = "REVOLVER_DEATHS", headshots = "REVOLVER_HEADSHOTS", shots = "REVOLVER_SHOTS", hits = "REVOLVER_HITS" },
    --Heavy Revolver MK II
    --Double Action Revolver
    { name = "Up-n-Atomizer", killsWith = "RAYPISTOL_KILLS", deathsBy = "RAYPISTOL_DEATHS", headshots = "RAYPISTOL_HEADSHOTS", shots = "RAYPISTOL_SHOTS", hits = "RAYPISTOL_HITS" },
    { name = "Ceramic Pistol", killsWith = "CERPST_KILLS", deathsBy = "CERPST_DEATHS", headshots = "CERPST_HEADSHOTS", shots = "CERPST_SHOTS", hits = "CERPST_HITS" },
    --Navy Revolver
    { name = "Perico Pistol", killsWith = "GDGTPST_KILLS", deathsBy = "GDGTPST_DEATHS", headshots = "GDGTPST_HEADSHOTS", shots = "GDGTPST_SHOTS", hits = "GDGTPST_HITS" },
    { name = "Stun Gun", killsWith = "STNGNMP_KILLS", deathsBy = "STNGNMP_DEATHS", headshots = "STNGNMP_HEADSHOTS", shots = "STNGNMP_SHOTS", hits = "STNGNMP_HITS" },    
    { name = "WM 29 Pistol", killsWith = "PISTOLXM3_KILLS", deathsBy = "PISTOLXM3_DEATHS", headshots = "PISTOLXM3_HEADSHOTS", shots = "PISTOLXM3_SHOTS", hits = "PISTOLXM3_HITS" },   
}
uTable.smgStats = {
    { name = "Micro SMG", killsWith = "MICROSMG_KILLS", deathsBy = "MICROSMG_DEATHS", headshots = "MICROSMG_HEADSHOTS", shots = "MICROSMG_SHOTS", hits = "MICROSMG_HITS" },
    { name = "SMG", killsWith = "SMG_KILLS", deathsBy = "SMG_DEATHS", headshots = "SMG_HEADSHOTS", shots = "SMG_SHOTS", hits = "SMG_HITS" },
    { name = "SMG MK II", killsWith = "SMG_MK2_KILLS", deathsBy = "SMG_MK2_DEATHS", headshots = "SMG_MK2_HEADSHOTS", shots = "SMG_MK2_SHOTS", hits = "SMG_MK2_HITS" },
    { name = "Assault SMG", killsWith = "ASLTSMG_KILLS", deathsBy = "ASLTSMG_DEATHS", headshots = "ASLTSMG_HEADSHOTS", shots = "ASLTSMG_SHOTS", hits = "ASLTSMG_HITS" },
    { name = "Combat PDW", killsWith = "COMBATPDW_KILLS", deathsBy = "COMBATPDW_DEATHS", headshots = "COMBATPDW_HEADSHOTS", shots = "COMBATPDW_SHOTS", hits = "COMBATPDW_HITS" },
    --Machine Pistol
    --Mini SMG
    { name = "Unholy Hellbringer", killsWith = "RAYCARBINE_KILLS", deathsBy = "RAYCARBINE_DEATHS", headshots = "RAYCARBINE_HEADSHOTS", shots = "RAYCARBINE_SHOTS", hits = "RAYCARBINE_HITS" },
    { name = "Tactical SMG", killsWith = "TECPISTOL_KILLS", deathsBy = "TECPISTOL_DEATHS", headshots = "TECPISTOL_HEADSHOTS", shots = "TECPISTOL_SHOTS", hits = "TECPISTOL_HITS" },
}
uTable.shotgunStats = {
    { name = "Pump Shotgun", killsWith = "PUMP_KILLS", deathsBy = "PUMP_DEATHS", headshots = "PUMP_HEADSHOTS", shots = "PUMP_SHOTS", hits = "PUMP_HITS" },
    { name = "Pump Shotgun MK II", killsWith = "PUMP_MK2_KILLS", deathsBy = "PUMP_MK2_DEATHS", headshots = "PUMP_MK2_HEADSHOTS", shots = "PUMP_MK2_SHOTS", hits = "PUMP_MK2_HITS" },
    { name = "Sawn-Off Shotgun", killsWith = "SAWNOFF_KILLS", deathsBy = "SAWNOFF_DEATHS", headshots = "SAWNOFF_HEADSHOTS", shots = "SAWNOFF_SHOTS", hits = "SAWNOFF_HITS" },
    { name = "Assault Shotgun", killsWith = "ASLTSHTGN_KILLS", deathsBy = "ASLTSHTGN_DEATHS", headshots = "ASLTSHTGN_HEADSHOTS", shots = "ASLTSHTGN_SHOTS", hits = "ASLTSHTGN_HITS" },
    { name = "Bullpup Shotgun", killsWith = "BULLPUP_KILLS", deathsBy = "BULLPUP_DEATHS", headshots = "BULLPUP_HEADSHOTS", shots = "BULLPUP_SHOTS", hits = "BULLPUP_HITS" },
    { name = "Musket", killsWith = "MUSKET_KILLS", deathsBy = "MUSKET_DEATHS", headshots = "MUSKET_HEADSHOTS", shots = "MUSKET_SHOTS", hits = "MUSKET_HITS" },
    { name = "Heavy Shotgun", killsWith = "HVYSHGN_KILLS", deathsBy = "HVYSHGN_DEATHS", headshots = "HVYSHGN_HEADSHOTS", shots = "HVYSHGN_SHOTS", hits = "HVYSHGN_HITS" },
    { name = "Double Barrel Shotgun", killsWith = "DBSHGN_KILLS", deathsBy = "DBSHGN_DEATHS", headshots = "DBSHGN_HEADSHOTS", shots = "DBSHGN_SHOTS", hits = "DBSHGN_HITS" },
    { name = "Auto Shotgun", killsWith = "AUTOSHGN_KILLS", deathsBy = "AUTOSHGN_DEATHS", headshots = "AUTOSHGN_HEADSHOTS", shots = "AUTOSHGN_SHOTS", hits = "AUTOSHGN_HITS" },
    --{ name = "Combat Shotgun", killsWith = "MINIGUNS_KILLS", deathsBy = "MINIGUNS_DEATHS", headshots = "MINIGUNS_HEADSHOTS", shots = "MINIGUNS_SHOTS", hits = "MINIGUNS_HITS" },
}
uTable.rifleStats = {
    { name = "Assault Rifle", killsWith = "ASLTRIFLE_KILLS", deathsBy = "ASLTRIFLE_DEATHS", headshots = "ASLTRIFLE_HEADSHOTS", shots = "ASLTRIFLE_SHOTS", hits = "ASLTRIFLE_HITS" },
    --{ name = "Assault Rifle MK II", killsWith = "ASLTRIFLE_KILLS", deathsBy = "ASLTRIFLE_DEATHS", headshots = "ASLTRIFLE_HEADSHOTS", shots = "ASLTRIFLE_SHOTS", hits = "ASLTRIFLE_HITS" },
    { name = "Carbine Rifle", killsWith = "CRBNRIFLE_KILLS", deathsBy = "CRBNRIFLE_DEATHS", headshots = "CRBNRIFLE_HEADSHOTS", shots = "CRBNRIFLE_SHOTS", hits = "CRBNRIFLE_HITS" },
    --{ name = "Carbine Rifle MK II", killsWith = "CRBNRIFLE_KILLS", deathsBy = "CRBNRIFLE_DEATHS", headshots = "CRBNRIFLE_HEADSHOTS", shots = "CRBNRIFLE_SHOTS", hits = "CRBNRIFLE_HITS" },
    { name = "Advanced Rifle", killsWith = "ADVRIFLE_KILLS", deathsBy = "ADVRIFLE_DEATHS", headshots = "ADVRIFLE_HEADSHOTS", shots = "ADVRIFLE_SHOTS", hits = "ADVRIFLE_HITS" },
    { name = "Special Carbine", killsWith = "SPCARBINE_KILLS", deathsBy = "SPCARBINE_DEATHS", headshots = "SPCARBINE_HEADSHOTS", shots = "SPCARBINE_SHOTS", hits = "SPCARBINE_HITS" },
    { name = "Special Carbine Mk II", killsWith = "SPCARB_MK2_KILLS", deathsBy = "SPCARB_MK2_DEATHS", headshots = "SPCARB_MK2_HEADSHOTS", shots = "SPCARB_MK2_SHOTS", hits = "SPCARB_MK2_HITS" },
    { name = "Bullpup Rifle", killsWith = "BULLRIFLE_KILLS", deathsBy = "BULLRIFLE_DEATHS", headshots = "BULLRIFLE_HEADSHOTS", shots = "BULLRIFLE_SHOTS", hits = "BULLRIFLE_HITS" },
    --{ name = "Bullpup Rifle MK II", killsWith = "BULLRIFLE_KILLS", deathsBy = "BULLRIFLE_DEATHS", headshots = "BULLRIFLE_HEADSHOTS", shots = "BULLRIFLE_SHOTS", hits = "BULLRIFLE_HITS" },
    { name = "Compact Rifle", killsWith = "CMPRIFLE_KILLS", deathsBy = "CMPRIFLE_DEATHS", headshots = "CMPRIFLE_HEADSHOTS", shots = "CMPRIFLE_SHOTS", hits = "CMPRIFLE_HITS" },
    { name = "Military Rifle", killsWith = "MLTRYRFL_KILLS", deathsBy = "MLTRYRFL_DEATHS", headshots = "MLTRYRFL_HEADSHOTS", shots = "MLTRYRFL_SHOTS", hits = "MLTRYRFL_HITS" },
    { name = "Heavy Rifle", killsWith = "HVYRIFLE_KILLS", deathsBy = "HVYRIFLE_DEATHS", headshots = "HVYRIFLE_HEADSHOTS", shots = "HVYRIFLE_SHOTS", hits = "HVYRIFLE_HITS" },
    --Tactical Rifle
    { name = "Battle Rifle", killsWith = "BTL_RLF_KILLS", deathsBy = "BTL_RLF_DEATHS", headshots = "BTL_RLF_HEADSHOTS", shots = "BTL_RLF_SHOTS", hits = "BTL_RLF_HITS" },
}
uTable.lmgStats = {
    { name = "MG", killsWith = "MG_KILLS", deathsBy = "MG_DEATHS", headshots = "MG_HEADSHOTS", shots = "MG_SHOTS", hits = "MG_HITS" },
    { name = "Combat MG", killsWith = "CMBTMG_KILLS", deathsBy = "CMBTMG_DEATHS", headshots = "CMBTMG_HEADSHOTS", shots = "CMBTMG_SHOTS", hits = "CMBTMG_HITS" },
    { name = "Combat MG MK II", killsWith = "CMBMG_MK2_KILLS", deathsBy = "CMBMG_MK2_DEATHS", headshots = "CMBMG_MK2_HEADSHOTS", shots = "CMBMG_MK2_SHOTS", hits = "CMBMG_MK2_HITS" },
    { name = "Gusenberg Sweeper", killsWith = "GUSNBRG_KILLS", deathsBy = "GUSNBRG_DEATHS", headshots = "GUSNBRG_HEADSHOTS", shots = "GUSNBRG_SHOTS", hits = "GUSNBRG_HITS" }, 
}
uTable.sniperStats = {
    { name = "Sniper Rifle", killsWith = "SNIPERRFL_KILLS", deathsBy = "SNIPERRFL_DEATHS", headshots = "SNIPERRFL_HEADSHOTS", shots = "SNIPERRFL_SHOTS", hits = "SNIPERRFL_HITS" },
    { name = "Heavy Sniper", killsWith = "HVYSNIPER_KILLS", deathsBy = "HVYSNIPER_DEATHS", headshots = "HVYSNIPER_HEADSHOTS", shots = "HVYSNIPER_SHOTS", hits = "HVYSNIPER_HITS" },
    { name = "Heavy Sniper MK II", killsWith = "HVYS_MK2_KILLS", deathsBy = "HVYS_MK2_DEATHS", headshots = "HVYS_MK2_HEADSHOTS", shots = "HVYS_MK2_SHOTS", hits = "HVYS_MK2_HITS" },
    --Marksman Rifle
    --Marksman Rifle MK II
    { name = "Precision Rifle", killsWith = "PRCSRIFLE_KILLS", deathsBy = "PRCSRIFLE_DEATHS", headshots = "PRCSRIFLE_HEADSHOTS", shots = "PRCSRIFLE_SHOTS", hits = "PRCSRIFLE_HITS" },
}
uTable.heavyStats = {
    { name = "RPG", killsWith = "RPG_KILLS", deathsBy = "RPG_DEATHS", shots = "RPG_SHOTS" },
    { name = "Grenade Launcher", killsWith = "GRNLAUNCH_KILLS", deathsBy = "GRNLAUNCH_DEATHS", shots = "GRNLAUNCH_SHOTS" },
    --Grenade Launcher Smoke
    { name = "Minigun", killsWith = "MINIGUNS_KILLS", deathsBy = "MINIGUNS_DEATHS", shots = "MINIGUNS_SHOTS" },
    --Firework Launcher
    --Railgun
    { name = "Homing Launcher", killsWith = "HOMLNCH_KILLS", deathsBy = "HOMLNCH_DEATHS", shots = "HOMLNCH_SHOTS" },
    { name = "Compact Grenade Launcher", killsWith = "CMPGL_KILLS", deathsBy = "CMPGL_DEATHS", shots = "CMPGL_SHOTS"},
    { name = "Widowmaker", killsWith = "RAYMINIGUN_KILLS", deathsBy = "RAYMINIGUN_DEATHS", shots = "RAYMINIGUN_SHOTS" },
    { name = "Compact EMP Launcher", killsWith = "EMPGL_KILLS", deathsBy = "EMPGL_DEATHS", shots = "EMPGL_SHOTS" },
    { name = "Snow Launcher", killsWith = "SNW_LCHR_KILLS", deathsBy = "SNW_LCHR_DEATHS", shots = "SNW_LCHR_SHOTS" },
    --Railgun XM3?
}
uTable.throwStats = {
    { name = "Grenade", killsWith = "GRENADE_KILLS", deathsBy = "GRENADE_DEATHS" },
    --BZ Gas
    { name = "Molotov", killsWith = "MOLOTOV_KILLS", deathsBy = "MOLOTOV_DEATHS" },
    { name = "Sticky Bomb", killsWith = "STKYBMB_KILLS", deathsBy = "STKYBMB_DEATHS" },
    { name = "Proximity Mine", killsWith = "PRXMINE_KILLS", deathsBy = "PRXMINE_DEATHS" },
    --Snowballs
    { name = "Pipe Bomb", killsWith = "PIPEBOMB_KILLS", deathsBy = "PIPEBOMB_DEATHS" },
    --Baseball
    { name = "Tear Gas", killsWith = "SMKGRENADE_KILLS", deathsBy = "SMKGRENADE_DEATHS" },
    --Flare
    --Acid Package?
}





uTable.weaponStats = {
    --{ name = "ASLTMG", killsWith = "ASLTMG_KILLS", deathsBy = "ASLTMG_DEATHS", headshots = "ASLTMG_HEADSHOTS", shots = "ASLTMG_SHOTS", hits = "ASLTMG_HITS" },
   --{ name = "ASLTSNIP", ammoBought = "ASLTSNIP_FM_AMMO_BOUGHT", ammoCurrent = "ASLTSNIP_FM_AMMO_CURRENT", inPossession = "ASLTSNIP_IN_POSSESSION", acquiredAsGift = "ASLTSNIP_AQUIRED_AS_GIFT" },

    --{ name = "Grenade Launcher", killsWith = "GRNLAUNCH_KILLS", deathsBy = "GRNLAUNCH_DEATHS", headshots = "GRNLAUNCH_HEADSHOTS", shots = "GRNLAUNCH_SHOTS" },
    --{ name = "RPG", killsWith = "RPG_KILLS", deathsBy = "RPG_DEATHS", headshots = "RPG_HEADSHOTS", shots = "RPG_SHOTS" },
    --knife
    --{ name = "Nightstick", killsWith = "NIGHTSTICK_KILLS", deathsBy = "NIGHTSTICK_DEATHS", hits = "NIGHTSTICK_HITS" },
    --{ name = "Baseball Bat", killsWith = "BAT_KILLS", deathsBy = "BAT_DEATHS", hits = "BAT_HITS" },
    --{ name = "Crowbar", killsWith = "CROWBAR_KILLS", deathsBy = "CROWBAR_DEATHS",hits = "CROWBAR_HITS" },
    -- { name = "Golf Club", killsWith = "GCLUB_KILLS", deathsBy = "GCLUB_DEATHS",  hits = "GCLUB_HITS" },

    --{ name = "Hammer", killsWith = "HAMMER_KILLS", deathsBy = "HAMMER_DEATHS" hits = "HAMMER_HITS" },
    


    --Gusenberg Sweeper
    --Firework Launcher
    --Heavy Shotgun
    --Marksman Rifle
    --Hatchet
    --Homing Launcher
    --Proximity Mine
    --Marksman Pistol
    --Machine Pistol
    --Heavy Revolver
    --Switchblade
    --Sweeper Shotgun
    --Battle Axe
    --Compact Grenade Launcher
    --Mini SMG
    --Pipe Bomb
    --Pool Cue
    --Pipe Wrench
    --Assault Rifle Mk II
    --Carbine Rifle Mk II
    --Combat MG Mk II
    --Heavy Sniper Mk II
    --Pistol Mk II
    --SMG Mk II
    --Bullpup Rifle Mk II
    --Marksman Rifle Mk II
    --Heavy Revolver Mk II
    --Double-Action Revolver
    --Stone Hatchet
    --Unholy Hellbringer
    --Windowmaker
    --Up-n-Atomizer
    --Ceramic Pistol
    --Navy Revolver
    --Combat Shotgun
    --Perico Pistol

   
   
    --{ name = "Wrench", killsWith = "WRENCH_KILLS", deathsBy = "WRENCH_DEATHS",  hits = "WRENCH_HITS" },
    --{ name = "Smoke Grenade", killsWith = "SMKGRENADE_KILLS", deathsBy = "SMKGRENADE_DEATHS", headshots = "SMKGRENADE_HEADSHOTS", shots = "SMKGRENADE_SHOTS", timeHeld = "SMKGRENADE_HELDTIME", dbHeldTime = "SMKGRENADE_DB_HELDTIME" },
}

function uTable.unlockAwards()
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_DM_WINS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_TDM_WINS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_TDM_MVP"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_RACES_WON"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMWINAIRRACE"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMWINSEARACE"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_GTA_RACES_WON"), 50, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMKILL3ANDWINGTARACE"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMRALLYWONDRIVE"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMRALLYWONNAV"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMWINCUSTOMRACE"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMWINRACETOPOINTS"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_RACE_MODDED_CAR"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_RACE_LAST_FIRST"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMRACEWORLDRECHOLDER"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_RACES_FASTEST_LAP"), 50, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMWINALLRACEMODES"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMHORDWAVESSURVIVE"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_SLIPSTREAMS_IN_RACE"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_TURBO_STARTS_IN_RACE"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_NO_ARMWRESTLING_WINS"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MOST_ARM_WRESTLING_WINS"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WIN_AT_DARTS"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_GOLF_WON"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_TENNIS_WON"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_TENNIS_5_SET_WINS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_TENNIS_STASETWIN"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_SHOOTRANG_CT_WON"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_SHOOTRANG_RT_WON"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_SHOOTRANG_TG_WON"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_SHOOTRANG_GRAN_WON"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMWINEVERYGAMEMODE"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WIN_CAPTURES"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WIN_CAPTURE_DONT_DYING"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WIN_LAST_TEAM_STANDINGS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ONLY_PLAYER_ALIVE_LTS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_KILL_TEAM_YOURSELF_LTS"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AIR_LAUNCHES_OVER_40M"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CARS_EXPORTED"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_LESTERDELIVERVEHICLES"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_RACES_WON"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_RACES_LOST"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_CUSTOM_RACES_WON"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_DEATHMATCH_LOST"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_DEATHMATCH_WON"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_TDEATHMATCH_LOST"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TOTAL_TDEATHMATCH_WON"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_SHOOTINGRANGE_WINS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_SHOOTINGRANGE_LOSSES"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TENNIS_MATCHES_WON"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_TENNIS_MATCHES_LOST"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GOLF_WINS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GOLF_LOSSES"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_DARTS_TOTAL_WINS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_DARTS_TOTAL_MATCHES"), 750, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_SHOOTINGRANGE_TOTAL_MATCH"), 800, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_BJ_WINS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_BJ_LOST"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_RACE_2_POINT_WINS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_RACE_2_POINT_LOST"), 250, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_KILLS_PLAYERS"), 3593, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_DEATHS_PLAYER"), 1002, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_MISSIONS_CREATED"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_LTS_CREATED"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_FM_MISSION_LIKES"), 1500, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM25DIFFERENTDM"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_DIFFERENT_DM"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM25DIFFERENTRACES"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_DIFFERENT_RACES"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PARACHUTE_JUMPS_20M"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PARACHUTE_JUMPS_50M"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMBASEJMP"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMATTGANGHQ"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM6DARTCHKOUT"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_GOLF_BIRDIES"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_GOLF_HOLE_IN_1"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FM_TENNIS_ACE"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMBBETWIN"), 50000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_LAPDANCES"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMCRATEDROPS"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMPICKUPDLCCRATE1ST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM25DIFITEMSCLOTHES"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_NO_HAIRCUTS"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BUY_EVERY_GUN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DRIVELESTERCAR5MINS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMTATTOOALLBODYPARTS"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DROPOFF_CAP_PACKAGES"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PICKUP_CAP_PACKAGES"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_MENTALSTATE_TO_NORMAL"), 50, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_STORE_20_CAR_IN_GARAGES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRADE_IN_YOUR_PROPERTY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DAILYOBJWEEKBONUS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DAILYOBJMONTHBONUS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_DRIVE_RALLY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_GTA_RACE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_BOAT_RACE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_FOOT_RACE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_TEAM_DM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_VEHICLE_DM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_MISSION_CONTACT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_A_PLAYLIST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_POINT_TO_POINT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_ONE_ON_ONE_DM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PLAY_ONE_ON_ONE_RACE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_SURV_A_BOUNTY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_SET_WANTED_LVL_ON_PLAY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_GANG_BACKUP_GANGS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_GANG_BACKUP_LOST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_GANG_BACKUP_VAGOS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_CALL_MERCENARIES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_PHONE_MECH_DROP_CAR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_GONE_OFF_RADAR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_FILL_TITAN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_MOD_CAR_USING_APP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_MOD_CAR_USING_APP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_BUY_INSURANCE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_BUY_GARAGE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_ENTER_FRIENDS_HOUSE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_CALL_STRIPPER_HOUSE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_CALL_FRIEND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_SEND_FRIEND_REQUEST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CL_W_WANTED_PLAYER_TV"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "FM_INTRO_CUT_DONE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "FM_INTRO_MISS_DONE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SHOOTINGRANGE_SEEN_TUT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "TENNIS_SEEN_TUTORIAL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DARTS_SEEN_TUTORIAL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "ARMWRESTLING_SEEN_TUTORIAL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HAS_WATCHED_BENNY_CUTSCE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_PHOTOS_TAKEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BOUNTSONU"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BOUNTPLACED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BETAMOUNT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRARMWREST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRBASEJUMP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRDARTS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRDM"), true, true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRGANGHIDE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRGOLF"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRHORDE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRMISSION"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRSHOOTRNG"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRTENNIS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_TIMES_CINEMA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_FM_CR_DM_MADE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_FM_CR_RACES_MADE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_FM_CR_PLAYED_BY_PEEP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_FM_CR_MISSION_SCORE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_UNLOCKED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_UNLOCKED2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_UNLOCKED3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_UNLOCKED4"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_ADDON_1_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_ADDON_2_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_ADDON_3_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_ADDON_4_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_FREE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_FREE2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_FREE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_FREE2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_FREE3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_FREE4"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_PURCHASED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_PURCHASED2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "WEAPON_PICKUP_BITSET"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "WEAPON_PICKUP_BITSET2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_UNLOCKED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_WEAPONS_UNLOCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_WEAPON_MODS_UNLOCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_WEAPON_CLR_MOD_UNLOCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_UNLOCKED2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_UNLOCKED3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_WEAP_UNLOCKED4"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_1_FM_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_2_FM_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_3_FM_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_4_FM_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_5_FM_UNLCK"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_6_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_7_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_8_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_9_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_10_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_11_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_12_FM_UNLCK"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_KIT_FM_PURCHASE"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_FM_PURCHASE"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_FM_PURCHASE2"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_FM_PURCHASE3"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_WEAP_FM_PURCHASE4"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_1_WHITE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_1_RED"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_1_BLUE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_2_WHITE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_2_RED"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_2_BLUE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_3_WHITE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_3_RED"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_3_BLUE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_4_WHITE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_4_RED"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIREWORK_TYPE_4_BLUE"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "WEAP_FM_ADDON_PURCH"), -1, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMTIME5STARWANTED"), 120, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_5STAR_WANTED_AVOIDANCE"), 50, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FMSHOOTDOWNCOPHELI"), 25, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_VEHICLES_JACKEDR"), 500, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SECURITY_CARS_ROBBED"), 25, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_HOLD_UP_SHOPS"), 20, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ODISTRACTCOPSNOEATH"), 25, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ENEMYDRIVEBYKILLS"), 100, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CHAR_WANTED_LEVEL_TIME5STAR"), 18000000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CARS_COPS_EXPLODED"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "BIKES_EXPLODED"), 100, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "BOATS_EXPLODED"), 168, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HELIS_EXPLODED"), 98, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "PLANES_EXPLODED"), 138, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "QUADBIKE_EXPLODED"), 50, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "BICYCLE_EXPLODED"), 48, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SUBMARINE_EXPLODED"), 28, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "TIRES_POPPED_BY_GUNSHOT"), 500, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_CRASHES_CARS"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_CRASHES_BIKES"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "BAILED_FROM_VEHICLE"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_CRASHES_QUADBIKES"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_COP_VEHICLE"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_CARS"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_BIKES"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_BOATS"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_HELIS"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_PLANES"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_QUADBIKES"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_STOLEN_BICYCLES"), 300, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MC_CONTRIBUTION_POINTS"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MEMBERSMARKEDFORDEATH"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MCKILLS"), 500, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MCDEATHS"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "RIVALPRESIDENTKILLS"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "RIVALCEOANDVIPKILLS"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUBHOUSECONTRACTSCOMPLETE"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUBHOUSECONTRACTEARNINGS"), 32698547, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUBCHALLENGESCOMPLETED"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MEMBERCHALLENGESCOMPLETED"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GHKILLS"), 500, true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HORDELVL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HORDKILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "UNIQUECRATES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BJWINS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HORDEWINS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "MCMWINS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "GANGHIDWINS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HITS_PEDS_VEHICLES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SHOTS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEADSHOTS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_ARMED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SUCCESSFUL_COUNTERS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_PLAYERS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DEATHS_PLAYER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_STEALTH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_INNOCENTS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_ENEMY_GANG_MEMBERS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_FRIENDLY_GANG_MEMBERS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_BY_OTHERS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BIGGEST_VICTIM_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "ARCHENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_COP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "KILLS_SWAT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "STARS_ATTAINED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "STARS_EVADED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VEHEXPORTED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "TOTAL_NO_SHOPS_HELD_UP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CR_GANGATTACK_CITY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CR_GANGATTACK_COUNTRY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CR_GANGATTACK_LOST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CR_GANGATTACK_VAGOS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_NON_CONTRACT_RACE_WIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DIED_IN_DROWNING"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DIED_IN_DROWNINGINVEHICLE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DIED_IN_EXPLOSION"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DIED_IN_FALL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DIED_IN_FIRE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "DIED_IN_ROAD"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "GRENADE_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "MICROSMG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SMG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "ASLTSMG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRBNRIFLE_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "ADVRIFLE_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "MG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CMBTMG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "ASLTMG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "RPG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "PISTOL_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "PLAYER_HEADSHOTS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SAWNOFF_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "STKYBMB_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "UNARMED_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SNIPERRFL_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HVYSNIPER_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_50_VEHICLES_BLOWNUP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CARS_EXPLODED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CAR_EXPORT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMDRIVEWITHOUTCRASH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PASSENGERTIME"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TIME_IN_HELICOPTER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_VEHICLE_JUMP_OVER_40M"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "MOST_FLIPS_IN_ONE_JUMP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "MOST_SPINS_IN_ONE_JUMP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_VEHICLE_1_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CHAR_FM_VEHICLE_2_UNLCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NO_CARS_REPAIR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VEHICLES_SPRAYED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "NUMBER_NEAR_MISS_NOCRASH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "USJS_FOUND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "USJS_COMPLETED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "USJS_TOTAL_COMPLETED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "CRDEADLINE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETIMECURRENT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETIME1ALLTIME"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETYPECURRENT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "FAVOUTFITBIKETYPEALLTIME"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "LONGEST_WHEELIE_DIST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "RACES_WON"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "COUNT_HOTRING_RACE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMFURTHESTWHEELIE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMFULLYMODDEDCAR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_100_HEADSHOTS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMOVERALLKILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMKILLBOUNTY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_DM_3KILLSAMEGUY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_DM_KILLSTREAK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_DM_STOLENKILL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FM_DM_TOTALKILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMKILLSTREAKSDM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMMOSTKILLSGANGHIDE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMMOSTKILLSSURVIVE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FMREVENGEKILLSDM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_KILL_CARRIER_CAPTURE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_NIGHTVISION_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_KILL_PSYCHOPATHS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TAKEDOWNSMUGPLANE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_100_KILLS_PISTOL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_100_KILLS_SMG"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_100_KILLS_SHOTGUN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "ASLTRIFLE_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_100_KILLS_SNIPER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "MG_ENEMY_KILLS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_25_KILLS_STICKYBOMBS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_50_KILLS_GRENADES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_50_KILLS_ROCKETLAUNCH"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_20_KILLS_MELEE"), 50, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CAR_BOMBS_ENEMY_KILLS"), 25, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "MELEEKILLS"), 700, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HITS"), 10000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "DEATHS"), 499, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HIGHEST_SKITTLES"), 900, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_NEAR_MISS"), 1000, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FINISH_HEISTS"), 50, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FINISH_HEIST_SETUP_JOB"), 50, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_COMPLETE_HEIST_NOT_DIE"), -1, true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FINISH_HEIST_NO_DAMAGE"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WIN_GOLD_MEDAL_HEISTS"), 25, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DO_HEIST_AS_MEMBER"), 25, true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DO_HEIST_AS_THE_LEADER"), 25, true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SPLIT_HEIST_TAKE_EVENLY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ACTIVATE_2_PERSON_KEY"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CONTROL_CROWDS"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ALL_ROLES_HEIST"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_COMPLETION"), 25, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEISTS_ORGANISED"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_START"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_END"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CUTSCENE_MID_PRISON"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CUTSCENE_MID_HUMANE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CUTSCENE_MID_NARC"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CUTSCENE_MID_ORNATE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_FLEECA_PREP_1"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_FLEECA_PREP_2"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_FLEECA_FINALE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PRISON_PLANE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PRISON_BUS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PRISON_STATION"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PRISON_UNFINISHED_BIZ"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PRISON_FINALE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_HUMANE_KEY_CODES"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_HUMANE_ARMORDILLOS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_HUMANE_EMP"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_HUMANE_VALKYRIE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_HUMANE_FINALE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_NARC_COKE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_NARC_TRASH_TRUCK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_NARC_BIKERS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_NARC_WEED"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_NARC_STEAL_METH"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_NARC_FINALE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PACIFIC_TRUCKS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PACIFIC_WITSEC"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PACIFIC_HACK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PACIFIC_BIKES"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PACIFIC_CONVOY"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_PACIFIC_FINALE"), -1, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MATCHING_OUTFIT_HEIST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_DONE_PRINT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_DONE_HELP_0"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_DONE_HELP_1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_PRE_PLAN_DONE_HELP_0"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_CUTS_DONE_FINALE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_IS_TUTORIAL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_STRAND_INTRO_DONE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_CUTS_DONE_ORNATE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_CUTS_DONE_PRISON"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_CUTS_DONE_BIOLAB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_CUTS_DONE_NARCOTIC"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_CUTS_DONE_TUTORIAL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_AWARD_DONE_PREP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HEIST_AWARD_BOUGHT_IN"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HEIST_PLANNING_STAGE"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_HEIST_ACH_TRACKER"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_WIN_GOLD_MEDAL_HEISTS"), 25, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_FLEECA_FIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_PRISON_FIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_HUMANE_FIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_SERIESA_FIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_PACIFIC_FIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_HST_ORDER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_COMPLET_HEIST_MEM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_COMPLET_HEIST_1STPER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_HST_SAME_TEAM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_HST_ULT_CHAL"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_HEIST_STATUS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_HEIST_STATUS"), -229384, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FM_MISSION_PROG"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "GANGOPS_FLOW_MISSION_PROG"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_MORGUE"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_DELUXO"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_SERVERFARM"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_IAABASE_FIN"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_STEALOSPREY"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_FOUNDRY"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_RIOTVAN"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_SUBMARINECAR"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_SUBMARINE_FIN"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_PREDATOR"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_BMLAUNCHER"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_BCCUSTOM"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_STEALTHTANKS"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_SPYPLANE"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_FINALE"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_FINALE_P2"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_GANGOP_FINALE_P3"), 10, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "DLCSMUGCHARPSTAT_INT260"), 3, 16, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT260"), 3, 24, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT260"), 3, 32, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT260"), 3, 40, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT260"), 3, 48, 8, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_ALLINORDER"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_LOYALTY"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_CRIMMASMD"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_LOYALTY2"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_LOYALTY3"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_CRIMMASMD2"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_CRIMMASMD3"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key("MPPLY_GANGOPS_SUPPORT"), 100, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_IAA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_SUBMARINE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_MISSILE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_ALLINORDER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_LOYALTY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_LOYALTY2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_LOYALTY3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_CRIMMASMD"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_CRIMMASMD2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_CRIMMASMD3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key("MPPLY_AWD_GANGOPS_SUPPORT"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DANCE_TO_SOLOMUN"), 120, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DANCE_TO_TALEOFUS"), 120, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DANCE_TO_DIXON"), 120, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DANCE_TO_BLKMAD"), 120, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CLUB_DRUNK"), 200, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_VIP_APPEAR"), 700, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_JOBS_DONE"), 700, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_EARNINGS"), 5721002, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HUB_SALES_COMPLETED"), 1001, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HUB_EARNINGS"), 20721002, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "DANCE_COMBO_DURATION_MINS"), 3600000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_PLAYER_APPEAR"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "LIFETIME_HUB_GOODS_SOLD"), 784672, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "LIFETIME_HUB_GOODS_MADE"), 507822, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "DANCEPERFECTOWNCLUB"), 120, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMUNIQUEPLYSINCLUB"), 120, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "DANCETODIFFDJS"), 4, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_HOTSPOT_TIME_MS"), 3600000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_CONT_TOTAL"), 20, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NIGHTCLUB_CONT_MISSION"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CLUB_CONTRABAND_MISSION"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "HUB_CONTRABAND_MISSION"), 1000, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CLUB_HOTSPOT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CLUB_CLUBBER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CLUB_COORD"), true, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 50, 8, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 100, 16, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 20, 24, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 80, 32, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 60, 40, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 40, 48, 8, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "BUSINESSBATPSTAT_INT379"), 10, 56, 8, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_BS_TRINKET_TICKERS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_BS_TRINKET_SAVED"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WATCH_YOUR_STEP"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_TOWER_OFFENSE"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_READY_FOR_WAR"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_THROUGH_A_LENS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SPINNER"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_YOUMEANBOOBYTRAPS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_MASTER_BANDITO"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SITTING_DUCK"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CROWDPARTICIPATION"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_KILL_OR_BE_KILLED"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_MASSIVE_SHUNT"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_YOURE_OUTTA_HERE"), 200, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WEVE_GOT_ONE"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ARENA_WAGEWORKER"), 1000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_TIME_SERVED"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_TOP_SCORE"), 55000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CAREER_WINNER"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_SP"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_SKILL_LEVEL"), 20, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_SP_LIFETIME"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_AP"), 0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_AP_TIER"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_AP_LIFETIME"), 5055000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_CARRER_UNLK"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_THEME_SCIFI"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_THEME_APOC"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_THEME_CONS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_PASS_THE_BOMB"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_DETONATION"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_ARCADE_RACE"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_CTF"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_TAG_TEAM"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_DESTR_DERBY"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_CARNAGE"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_MONSTER_JAM"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_W_GAMES_MASTERS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_PASS_THE_BOMB"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_DETONATION"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_ARCADE_RACE"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_CTF"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_TAG_TEAM"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_DESTR_DERBY"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_CARNAGE"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_MONSTER_JAM"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_L_GAMES_MASTERS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "NUMBER_OF_CHAMP_BOUGHT"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_SPECTATOR_KILLS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_LIFETIME_KILLS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_LIFETIME_DEATHS"), 500, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_CARRER_WINS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_CARRER_WINT"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_MATCHES_PLYD"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARENAWARS_MATCHES_PLYDT"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_SPEC_BOX_TIME_MS"), 86400000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_SPECTATOR_DRONE"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_SPECTATOR_CAMS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_SMOKE"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_DRINK"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_MONSTER"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_MONSTER"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_MONSTER"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_CERBERUS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_CERBERUS2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_CERBERUS3"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_BRUISER"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_BRUISER2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_BRUISER3"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_SLAMVAN4"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_SLAMVAN5"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_SLAMVAN6"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_BRUTUS"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_BRUTUS2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_BRUTUS3"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_SCARAB"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_SCARAB2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_SCARAB3"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_DOMINATOR4"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_DOMINATOR5"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_DOMINATOR6"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_IMPALER2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_IMPALER3"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_IMPALER4"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_ISSI4"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_ISSI5"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_ISSI"), 61000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_IMPERATOR"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_IMPERATOR2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_IMPERATOR3"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_ZR380"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_ZR3802"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_ZR3803"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_DEATHBIKE"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_DEATHBIKE2"), 1000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "ARN_VEH_DEATHBIKE3"), 1000, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BEGINNER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIELD_FILLER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ARMCHAIR_RACER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_LEARNER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SUNDAY_DRIVER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_THE_ROOKIE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BUMP_AND_RUN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GEAR_HEAD"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DOOR_SLAMMER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_HOT_LAP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ARENA_AMATEUR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PAINT_TRADER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHUNTER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_JOCK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_WARRIOR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_T_BONE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MAYHEM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_WRECKER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CRASH_COURSE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ARENA_LEGEND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PEGASUS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_UNSTOPPABLE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CONTACT_SPORT"), true, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2() .. "ARENAWARSPSTAT_INT"), 1, 35, 8, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ODD_JOBS"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_PROGRESS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "VCM_STORY_PROGRESS"), 5, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIRST_TIME1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIRST_TIME2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIRST_TIME3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIRST_TIME4"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIRST_TIME5"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FIRST_TIME6"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ALL_IN_ORDER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SUPPORTING_ROLE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_LEADER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SURVIVALIST"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CAS_HEIST_NOTS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CAS_HEIST_FLOW"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SIGNAL_JAMMERS_COLLECTED"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PREPARATION"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ASLEEPONJOB"), 20, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DAICASHCRAB"), 100000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_BIGBRO"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SHARPSHOOTER"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_RACECHAMP"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_BATSWORD"), 1000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_COINPURSE"), 950000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ASTROCHIMP"), 3000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_MASTERFUL"), 40000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_BOARD_DIALOGUE0"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_BOARD_DIALOGUE1"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_BOARD_DIALOGUE2"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_VEHICLESUSED"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_STEALTH_1A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_STEALTH_2B_RAPP"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_STEALTH_2C_SIDE"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_STEALTH_3A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_STEALTH_4A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_STEALTH_5A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_1A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_2A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_2B"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_3A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_3B"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_4A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_SUBTERFUGE_5A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_1A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_2A1"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_2A2"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_2BP"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_2C"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_3A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_4A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H3_CR_DIRECT_5A"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CR_ORDER"), 100, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SCOPEOUT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CREWEDUP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MOVINGON"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PROMOCAMP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GUNMAN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SMASHNGRAB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_INPLAINSI"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_UNDETECTED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ALLROUND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ELITETHEIF"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PRO"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SUPPORTACT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHAFTED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_COLLECTOR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DEADEYE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PISTOLSATDAWN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRAFFICAVOI"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CANTCATCHBRA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_WIZHARD"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_APEESCAPE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MONKEYKIND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_AQUAAPE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_KEEPFAITH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRUELOVE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_NEMESIS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FRIENDZONED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_RSC_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_BWL_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_MTG_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_OIL_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_DEF_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "VCM_FLOW_CS_FIN_SEEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_FURIA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_MINITAN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_YOSEMITE2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_ZHABA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_IMORGEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_SULTAN2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_VAGRANT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_VSTR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_STRYDER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_SUGOI"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_KANJO"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_FORMULA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_FORMULA2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "HELP_JB7002"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PREPARATION"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ASLEEPONJOB"), 20, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_DAICASHCRAB"), 100000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_BIGBRO"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SHARPSHOOTER"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_RACECHAMP"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_BATSWORD"), 1000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_COINPURSE"), 950000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ASTROCHIMP"), 3000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_MASTERFUL"), 40000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_NUM_WINS_GANG_0"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_NUM_WINS_GANG_1"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_NUM_WINS_GANG_2"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_NUM_WINS_GANG_3"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CH_ARC_CAB_CLAW_TROPHY"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "CH_ARC_CAB_LOVE_TROPHY"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "IAP_MAX_MOON_DIST"), 2147483647, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_0"), 69644, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_1"), 50333, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_2"), 63512, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_3"), 46136, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_4"), 21638, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_5"), 2133, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_6"), 1215, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_7"), 2444, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_8"), 38023, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "SCGW_INITIALS_9"), 2233, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_0"),0, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_1"), 64, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_2"), 8457, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_3"), 91275, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_4"), 53260, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_5"), 78663, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_6"), 25103, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_7"), 102401, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_8"), 12672, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_INITIALS_9"), 74380, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_0"), 284544, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_1"), 275758, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_2"), 100000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_3"), 90000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_4"), 80000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_5"), 70000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_6"), 60000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_7"), 50000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_8"), 40000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FOOTAGE_SCORE_9"), 30000, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SCOPEOUT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CREWEDUP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MOVINGON"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PROMOCAMP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GUNMAN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SMASHNGRAB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_INPLAINSI"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_UNDETECTED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ALLROUND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ELITETHEIF"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PRO"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SUPPORTACT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHAFTED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_COLLECTOR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DEADEYE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PISTOLSATDAWN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRAFFICAVOI"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CANTCATCHBRA"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_WIZHARD"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_APEESCAP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MONKEYKIND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_AQUAAPE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_KEEPFAITH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRUELOVE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_NEMESIS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FRIENDZONED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "IAP_CHALLENGE_0"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "IAP_CHALLENGE_1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "IAP_CHALLENGE_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "IAP_CHALLENGE_3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "IAP_CHALLENGE_4"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "IAP_GOLD_TANK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "SCGW_WON_NO_DEATHS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_KINGOFQUB3D"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_QUBISM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_QUIBITS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GODOFQUB3D"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ELEVENELEVEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GOFOR11TH"), true, true)
    stats.stat_set_masked_int(gameplay.get_hash_key(mpx2().."SU20PSTAT_INT"), 1, 35, 8, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_INTELGATHER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_COMPOUNDINFILT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_LOOT_FINDER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MAX_DISRUPT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_THE_ISLAND_HEIST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GOING_ALONE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TEAM_WORK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MIXING_UP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TEAM_WORK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MIXING_UP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PRO_THIEF"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CAT_BURGLAR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ONE_OF_THEM"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GOLDEN_GUN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ELITE_THIEF"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PROFESSIONAL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_HELPING_OUT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_COURIER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PARTY_VIBES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_HELPING_HAND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ELEVENELEVEN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "COMPLETE_H4_F_USING_VETIR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "COMPLETE_H4_F_USING_LONGFIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "COMPLETE_H4_F_USING_ANNIH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "COMPLETE_H4_F_USING_ALKONOS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "COMPLETE_H4_F_USING_PATROLB"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_LOSTANDFOUND"), 500000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SUNSET"), 1800000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_TREASURE_HUNTER"), 1000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WRECK_DIVING"), 1000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_KEINEMUSIK"), 1800000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PALMS_TRAX"), 1800000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_MOODYMANN"), 1800000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FILL_YOUR_BAGS"), 1000000000, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_WELL_PREPARED"), 80, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4_H4_DJ_MISSIONS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4CNF_APPROACH"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4_MISSIONS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "H4_PLAYTHROUGH_STATUS"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CAR_CLUB_MEM"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_SPRINTRACER"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_STREETRACER"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PURSUITRACER"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_TEST_CAR"), 240, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_AUTO_SHOP"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_GROUNDWORK"), 40, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CAR_EXPORT"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_ROBBERY_CONTRACT"), 100, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_FACES_OF_DEATH"), 100, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CAR_CLUB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PRO_CAR_EXPORT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_UNION_DEPOSITORY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MILITARY_CONVOY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FLEECA_BANK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_FREIGHT_TRAIN"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BOLINGBROKE_ASS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_IAA_RAID"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_METH_JOB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BUNKER_RAID"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_STRAIGHT_TO_VIDEO"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MONKEY_C_MONKEY_DO"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRAINED_TO_KILL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DIRECTOR"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CONTRACTOR"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_COLD_CALLER"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_PRODUCER"), 60, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXERTELEPHONEHITSCOMPL"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "PAYPHONE_BONUS_KILL_METHOD"), 10, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "PAYPHONE_BONUS_KILL_METHOD"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_GENERAL_BS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_COMPLETED_BS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_STORY_BS"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_STORY_STRAND"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_STORY_COOLDOWN"), -1, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_COUNT"), 510, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_SC_VEH_RECOVERED"), 85, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_SC_VAL_RECOVERED"), 85, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_SC_GANG_TERMINATED"), 85, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_SC_VIP_RESCUED"), 85, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_SC_ASSETS_PROTECTED"), 85, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_SC_EQ_DESTROYED"), 85, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "FIXER_EARNINGS"), 19734860, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TEEING_OFF"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_PARTY_NIGHT"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BILLIONAIRE_GAMES"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_HOOD_PASS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_STUDIO_TOUR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DONT_MESS_DRE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BACKUP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHORTFRANK_1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHORTFRANK_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHORTFRANK_3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CONTR_KILLER"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DOGS_BEST_FRIEND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_MUSIC_STUDIO"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHORTLAMAR_1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHORTLAMAR_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_SHORTLAMAR_3"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_FRANKLIN_DIALOGUE_0"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_FRANKLIN_DIALOGUE_1"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_FRANKLIN_DIALOGUE_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_SETUP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_STRAND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_PARTY"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_PARTY_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_PARTY_F"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_BILL"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_BILL_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_BILL_F"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_HOOD"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_HOOD_2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "BS_IMANI_D_APP_HOOD_F"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ACELIQUOR"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRUCKAMBUSH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_LOSTCAMPREV"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ACIDTRIP"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_HIPPYRIVALS"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TRAINCRASH"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BACKUPB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_GETSTARTED"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CHEMREACTION"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AAWD_WAREHODEFEND"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_ATTACKINVEST"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_RESCUECOOK"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_DRUGTRIPREHAB"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_CARGOPLANE"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_BACKUPB2"), true, true)
    stats.stat_set_bool(gameplay.get_hash_key(mpx2() .. "AWD_TAXISTAR"), true, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_RUNRABBITRUN"), 5, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CALLME"), 50, true)
    stats.stat_set_int(gameplay.get_hash_key(mpx2() .. "AWD_CHEMCOMPOUNDS"), 50, true)
end
return uTable