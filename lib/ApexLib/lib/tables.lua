local tables = {}

local function mpx2()
    return "MP" .. stats.stat_get_int(gameplay.get_hash_key("MPPLY_LAST_MP_CHAR"), 1) .. "_"
end

tables.trustedModes = {
    { bit = 1 << 1, name = "Globals" },
    { bit = 1 << 0, name = "Stats" },
    { bit = 1 << 2, name = "Natives" }
}

tables.Achievements = {
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

tables.CircoLocoMusic = {
    {name = "CircoLoco Record - Black EP", coord = v3(-2172.050, 1159.195, -24.372)},
    {name = "CircoLoco Record - Blue EP", coord = v3(955.299, 48.904, 112.553)},
    {name = "CircoLoco Record - Violet EP", coord = v3(-1618.841, -3010.627, -75.205)},
    {name = "CircoLoco Record - Green EP", coord = v3(2726.694, -387.484, -48.993)}
}
tables.KennyMusic = {
    {name = "Kenny's Backyard Boogie - #1", coord = v3(-2163.025, 1083.473, -24.362)},
    {name = "Kenny's Backyard Boogie - #2", coord = v3(-2180.532, 1082.276, -24.367)},
    {name = "Kenny's Backyard Boogie - #3", coord = v3(-2162.992, 1089.790, -24.363)},
    {name = "Kenny's Backyard Boogie - #4", coord = v3(-2162.770, 1115.913, -24.371)}
}
tables.NezMusic = {
    {name = "NEZ - You Wanna?", coord = v3(-860.241, -229.980, 61.016)},
    {name = "NEZ ft. Schoolboy Q - Let's Get It", coord = v3(25.010, 521.276, 170.227)}
}

tables.clothingIDs = {
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

tables.AchievementIDs = {
    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 
    33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 
    63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78
}

tables.vanityPlates = {
    {name = "E-Cola", id = 6},
    {name = "Las Venturas", id = 7},
    {name = "Liberty City", id = 8},
    {name = "LS Car Meet", id = 9},
    {name = "Panic", id = 10},
    {name = "Pounders", id = 11},
    {name = "Sprunk", id = 12}
}

tables.unreleasedVehicles = {
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

tables.autoShopRobberies = {
    {name = "The Union Depository Contract", subName = "unionContract" },
    {name = "The Superdollar Deal", subName = "superDollar" },
    {name = "The Bank Contract", subName = "bankContract" },
    {name = "The ECU Job", subName = "ecuJob" },
    {name = "The Prison Contract", subName = "prisonContract" },
    {name = "The Agency Deal", subName = "agencyDeal" },
    {name = "The Lost Contract", subName = "lostContract" },
    {name = "The Data Contract", subName = "dataContract" },
}

tables.agencyContracts = {
    { name = "Asset Protection", stat = "FIXER_SC_ASSETS_PROTECTED" },
    { name = "Gang Termination", stat = "FIXER_SC_GANG_TERMINATED" },
    { name = "Liquidize Assets", stat = "FIXER_SC_EQ_DESTROYED" },
    { name = "Recover Valuables", stat = "FIXER_SC_VAL_RECOVERED" },
    { name = "Rescue Operation", stat = "FIXER_SC_VIP_RESCUED" },
    { name = "Vehicle Recovery", stat = "FIXER_SC_VEH_RECOVERED" },

    { name = "Payphone Hits", stat = "FIXERTELEPHONEHITSCOMPL"},
}
tables.agencyContracts2 = {
    { name = "Contracts done", stat = "FIXER_COUNT"},
    { name = "Contracts earnings", stat = "FIXER_EARNINGS"},
}

tables.faff = { -- Further Adventures in Finance and Felony
    --{ name = "Collections Completed", stat = "LIFETIME_BUY_COMPLETE"},
    { name = "Sales Completed", stat = "LIFETIME_SELL_COMPLETE"},
    { name = "Total Earnings", stat = "LIFETIME_CONTRA_EARNINGS"},
}
tables.importExport = {
    --{ name = "Vehicles stolen", stat = "VEH_CARGO_STEAL_NUM"}, -- Returns 0 for some reason
    { name = "Vehicles exported", stat = "LFETIME_IE_EXPORT_COMPLETED"},
    { name = "Total Export Earnings", stat = "LFETIME_IE_MISSION_EARNINGS"},
}

tables.compStats = {
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
tables.compStatsPP = { -- per player
    { name = "Impromptu Races Won", stat = "IMPROMPTU_RACES_WON"},
    { name = "Entourage (Festive Remix) Wins", stat = "XMAS2023_ADV_MODE_WINS"},
}
tables.allReports = {
    { name = "Griefing", stat = "MPPLY_GRIEFING" },
    { name = "Exploits", stat = "MPPLY_EXPLOITS" },
    { name = "Bug Exploits", stat = "MPPLY_GAME_EXPLOITS" },
    { name = "Text Chat: Annoying Me", stat = "MPPLY_TC_ANNOYINGME" },
    { name = "Text Chat: Using Hate Speech", stat = "MPPLY_TC_HATE" },
    { name = "Voice Chat: Annoying Me", stat = "MPPLY_VC_ANNOYINGME" },
    { name = "Voice Chat: Using Hate Speech", stat = "MPPLY_VC_HATE" },
    { name = "Offensive Language", stat = "MPPLY_OFFENSIVE_LANGUAGE" },
    { name = "Offensive Tagplate", stat = "MPPLY_OFFENSIVE_TAGPLATE" },
    { name = "Offensive Content", stat = "MPPLY_OFFENSIVE_UGC" },
    { name = "Bad Crew Name", stat = "MPPLY_BAD_CREW_NAME" },
    { name = "Bad Crew Motto", stat = "MPPLY_BAD_CREW_MOTTO" },
    { name = "Bad Crew Status", stat = "MPPLY_BAD_CREW_STATUS" },
    { name = "Bad Crew Emblem", stat = "MPPLY_BAD_CREW_EMBLEM" },
    { name = "Friendly", stat = "MPPLY_FRIENDLY" },
    { name = "Helpful", stat = "MPPLY_HELPFUL" },
}

--RAILGUN_KILLS | ASLTR_MK2_KILLS | CBNR_MK2_KILLS | HCK_DVE_KILLS | YACHT_NAME, YACHT_NAME2 |  | BLRIFLE_MK2_KILLS |  | 
--REV_MK2_KILLS | REV_DA_KILLS | 
tables.weaponList = {
    ["Melee"]       =   {
                            {name = "Antique Cavalry Dagger", statName = "DAGGER"},
                            {name = "Baseball Bat", statName = "BAT"},
                            {name = "Bottle", statName = "BOTTLE"},
                            {name = "Crowbar", statName = "CROWBAR"},
                            {name = "Flashlight", statName = "FLASHLIGHT"},
                            {name = "Golf Club", statName = "GCLUB"},
                            {name = "Hammer", statName = "HAMMER"},
                            {name = "Hatchet", statName = "HATCHET"},
                            {name = "Knuckle Duster", statName = "KNUCKLE"},
                            {name = "Knife", statName = "KNIFE"},
                            {name = "Machete", statName = "MACHETE"},
                            {name = "Switchblade", statName = "SWBLADE"},
                            {name = "Nightstick", statName = "NIGHTSTICK"},
                            {name = "Wrench", statName = "WRENCH"},
                            {name = "Battle Axe", statName = "BATTLEAXE"},
                            {name = "Pool Cue", statName = "POOLCUE"},
                            {name = "Stone Hatchet", statName = "SHATCHET"},
                            --{ name = "Candy Cane", 
                        },
    ["Handguns"]    =   {
                            {name = "Pistol", statName = "PISTOL"},
                            {name = "Pistol MK II", statName = "PIST_MK2"},
                            {name = "Combat Pistol", statName = "CMBTPISTOL"},
                            {name = "AP Pistol", statName = "APPISTOL"},
                            {name = "Pistol .50", statName = "PISTOL50"},
                            {name = "SNS Pistol", statName = "SNSPISTOL"},
                            {name = "SNS Pistol MK II", statName = "SNSPIST_MK2"},
                            {name = "Heavy Pistol", statName = "HVYPISTOL"},
                            {name = "Vintage Pistol", statName = "VPISTOL"},
                            {name = "Flare Gun", statName = "FLAREGUN"},
                            --Marksman Pistol
                            {name = "Heavy Revolver", statName = "REVOLVER"},
                            --Heavy Revolver MK II
                            --Double Action Revolver
                            {name = "Up-n-Atomizer", statName = "RAYPISTOL"},
                            {name = "Ceramic Pistol", statName = "CERPST"},
                            --Navy Revolver
                            {name = "Perico Pistol", statName = "GDGTPST"},
                            {name = "Stun Gun", statName = "STNGNMP"},
                            {name = "WM 29 Pistol", statName = "PISTOLXM3"},
                        },
    ["SMG"]         =   {
                            {name = "Micro SMG", statName = "MICROSMG"},
                            {name = "SMG", statName = "SMG"},
                            {name = "SMG MK II", statName = "SMG_MK2"},
                            {name = "Assault SMG", statName = "ASLTSMG"},
                            {name = "Combat PDW", statName = "COMBATPDW"},
                            --Machine Pistol
                            --Mini SMG
                            {name = "Unholy Hellbringer", statName = "RAYCARBINE"},
                            {name = "Tactical SMG", statName = "TECPISTOL"},
                        },
    ["Shotguns"]    =   {
                            { name = "Pump Shotgun", statName = "PUMP"},
                            { name = "Pump Shotgun MK II", statName = "PUMP_MK2"},
                            { name = "Sawn-Off Shotgun", statName = "SAWNOFF"},
                            { name = "Assault Shotgun", statName = "ASLTSHTGN",},
                            { name = "Bullpup Shotgun", statName = "BULLPUP"},
                            { name = "Musket", statName = "MUSKET"},
                            { name = "Heavy Shotgun", statName = "HVYSHGN"},
                            { name = "Double Barrel Shotgun", statName = "DBSHGN"},
                            { name = "Auto Shotgun", statName = "AUTOSHGN"},
                            { name = "Combat Shotgun", statName = "MINIGUNS"},
                        },
    ["Rifles"]    =     {
                            { name = "Assault Rifle", statName = "ASLTRIFLE"},
                            --{ name = "Assault Rifle MK II", statName = "ASLTRIFLE"},
                            { name = "Carbine Rifle", statName = "CRBNRIFLE"},
                            --{ name = "Carbine Rifle MK II", statName = "CRBNRIFLE"},
                            { name = "Advanced Rifle", statName = "ADVRIFLE"},
                            { name = "Special Carbine", statName = "SPCARBINE",},
                            { name = "Special Carbine Mk II", statName = "SPCARB_MK2"},
                            { name = "Bullpup Rifle", statName = "BULLRIFLE"},
                            --{ name = "Bullpup Rifle MK II", statName = "BULLRIFLE"},
                            { name = "Compact Rifle", statName = "CMPRIFLE"},
                            { name = "Military Rifle", statName = "MLTRYRFL"},
                            { name = "Heavy Rifle", statName = "HVYRIFLE"},
                            --Tactical Rifle
                            { name = "Battle Rifle", statName = "BTL_RLF"},
                        },
    ["Light Machine Guns"]  =  {
                            { name = "MG", statName = "MG"},
                            { name = "Combat MG", statName = "CMBTMG"},
                            { name = "Combat MG MK II", statName = "CMBMG_MK2"},
                            { name = "Gusenberg Sweeper", statName = "GUSNBRG"}, 
                        },
    ["Sniper Rifles"] = {
                            { name = "Sniper Rifle", statName = "SNIPERRFL"},
                            { name = "Heavy Sniper", statName = "HVYSNIPER"},
                            { name = "Heavy Sniper MK II", statName = "HVYS_MK2"},
                            --Marksman Rifle
                            --Marksman Rifle MK II
                            { name = "Precision Rifle", statName = "MKRIFLE_MK2"},
                            { name = "Precision Rifle", statName = "PRCSRIFLE"},
                        },
    ["Heavy"]         = {
                            { name = "RPG", statName = "RPG",},
                            { name = "Grenade Launcher", statName = "GRNLAUNCH"},
                            --Grenade Launcher Smoke
                            { name = "Minigun", statName = "MINIGUNS"},
                            --Firework Launcher
                            --Railgun
                            { name = "Homing Launcher", statName = "HOMLNCH"},
                            { name = "Compact Grenade Launcher", statName = "CMPGL"},
                            { name = "Widowmaker", statName = "RAYMINIGUN"},
                            { name = "Compact EMP Launcher", statName = "EMPGL"},
                            { name = "Snow Launcher", statName = "SNW_LCHR"},
                            --Railgun XM3?
                        },
    ["Throwables"]  =   {
                            { name = "Grenade", statName = "GRENADE" },
                            --BZ Gas
                            { name = "Molotov", statName = "MOLOTOV" },
                            { name = "Sticky Bomb", statName = "STKYBMB" },
                            {name = "Proximity Mine", statName = "PRXMINE" },
                            --Snowball
                            { name = "Pipe Bomb", statName = "PIPEBOMB" },
                            --Baseball
                            { name = "Tear Gas", statName = "SMKGRENADE" },
                            --Flare
                            --Acid Package
                        },
}

tables.weaponListTypes = {
    ["Kills with"] = 0,
    ["Deaths by"] = 0,
    ["Headshots with"] = 0,
    ["Shots with"] = 0,
    ["Hits with"] = 0,
}

tables.shirtUnlocks = {
    { stat = "ACCOUNTANTSHIRTUNLOCK" },
    { stat = "BAHAMAMAMASHIRTUNLOCK" },
    { stat = "DRONESHIRTUNLOCK" },
    { stat = "GROTTISHIRTUNLOCK" },
    { stat = "GOLFSHIRTUNLOCK" },
    { stat = "MAISONETTESHIRTUNLOCK" },
    { stat = "MANOPAUSESHIRTUNLOCK" },
    { stat = "MELTDOWNSHIRTUNLOCK" },
    { stat = "PACIFICBLUFFSSHIRTUNLOCK" },
    { stat = "PROLAPSSHIRTUNLOCK" },
    { stat = "TENNISSHIRTUNLOCK" },
    { stat = "TOESHOESSHIRTUNLOCK" },
    { stat = "VANILLAUNICORNSHIRTUNLOCK" },
    { stat = "MARLOWESHIRTUNLOCK" },
    { stat = "CRESTSHIRTUNLOCK" },
}

tables.collectablesList = {
    { name = "", statName = "" },
    { name = "", statName = "" },
    { name = "", statName = "" },
}


tables.weaponStats = {
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



return tables