#!/usr/bin/env bash
set -euo pipefail
mkdir -p presets stories trends

# ---------------- 50 TEMPLATES ----------------
cat > presets/templates_50.json <<'JSON'
{
  "templates": [
    { "id":"tpl_001_nangtho_ricefield","label":"Nàng Thơ • Ruộng Lúa","story_seed":"Poetic walk through Vietnamese rice fields at golden hour, gentle breeze, serene mood.","continuity_profile":"soft_natural","shot_profile":"cinematic_soft","camera_bias":["flycam","wide","close"],"color_mood":"golden hour, soft haze","frame_default":"16:9","frame_override":true },
    { "id":"tpl_002_nangtho_pinehill","label":"Nàng Thơ • Đồi Thông","story_seed":"Calm cinematic journey on a pine hill, sun rays through trees, introspective feeling.","continuity_profile":"soft_natural","shot_profile":"cinematic_soft","camera_bias":["wide","close"],"color_mood":"soft sun rays, film grain","frame_default":"16:9","frame_override":true },
    { "id":"tpl_003_nangtho_seaside","label":"Nàng Thơ • Bờ Biển","story_seed":"Dreamy seaside stroll, wind in hair, calm emotions, cinematic waves.","continuity_profile":"soft_natural","shot_profile":"cinematic_soft","camera_bias":["flycam","wide"],"color_mood":"pastel sky, soft highlights","frame_default":"16:9","frame_override":true },
    { "id":"tpl_004_nangtho_oldtown","label":"Nàng Thơ • Phố Cổ","story_seed":"Poetic walk in old town streets with warm lantern glow, nostalgic romance.","continuity_profile":"soft_natural","shot_profile":"cinematic_soft","camera_bias":["wide","medium","close"],"color_mood":"warm lantern glow, film look","frame_default":"9:16","frame_override":true },
    { "id":"tpl_005_nangtho_garden","label":"Nàng Thơ • Vườn Xanh","story_seed":"Soft garden walk with white dress, gentle smiles, sun dappled leaves.","continuity_profile":"soft_natural","shot_profile":"cinematic_soft","camera_bias":["wide","close"],"color_mood":"soft green, warm light","frame_default":"16:9","frame_override":true },

    { "id":"tpl_006_sad_rain_window","label":"Sad Love • Mưa Cửa Sổ","story_seed":"Lonely night, rain on window, quiet memories, soft heartbreak release.","continuity_profile":"muted_emotion","shot_profile":"emotional_close","camera_bias":["close","handheld"],"color_mood":"cool rain, low light","frame_default":"9:16","frame_override":true },
    { "id":"tpl_007_sad_empty_cafe","label":"Sad Love • Quán Vắng","story_seed":"Quiet empty cafe, distant echoes, reflective sadness, cinematic silence.","continuity_profile":"muted_emotion","shot_profile":"emotional_close","camera_bias":["close","medium"],"color_mood":"desaturated, soft shadows","frame_default":"9:16","frame_override":true },
    { "id":"tpl_008_sad_bus_night","label":"Sad Love • Chuyến Xe Đêm","story_seed":"Late-night bus ride, city lights passing, inner monologue, letting go.","continuity_profile":"muted_emotion","shot_profile":"emotional_close","camera_bias":["close","handheld"],"color_mood":"neon reflections, cool tone","frame_default":"9:16","frame_override":true },
    { "id":"tpl_009_sad_bridge_wind","label":"Sad Love • Gió Trên Cầu","story_seed":"Windy bridge, city bokeh, close-up emotions, calm release.","continuity_profile":"muted_emotion","shot_profile":"emotional_close","camera_bias":["wide","close"],"color_mood":"cool windy dusk","frame_default":"16:9","frame_override":true },
    { "id":"tpl_010_sad_room_sunset","label":"Sad Love • Hoàng Hôn Trong Phòng","story_seed":"Quiet room at sunset, soft shadows, reflective mood, gentle letting go.","continuity_profile":"muted_emotion","shot_profile":"emotional_close","camera_bias":["close","handheld"],"color_mood":"warm low sun, soft grain","frame_default":"9:16","frame_override":true },

    { "id":"tpl_011_fashion_street_editorial","label":"Fashion • Street Editorial","story_seed":"High-end street fashion editorial, confident poses, clean composition.","continuity_profile":"fashion_clean","shot_profile":"fashion_editorial","camera_bias":["static","dolly"],"color_mood":"neutral, crisp","frame_default":"1:1","frame_override":true },
    { "id":"tpl_012_fashion_rooftop","label":"Fashion • Rooftop","story_seed":"Rooftop fashion shoot, skyline backdrop, luxury vibe, strong silhouette.","continuity_profile":"fashion_clean","shot_profile":"fashion_editorial","camera_bias":["wide","medium"],"color_mood":"clean, high contrast","frame_default":"9:16","frame_override":true },
    { "id":"tpl_013_fashion_minimal_studio","label":"Fashion • Minimal Studio","story_seed":"Minimal studio lookbook, pure light, sharp styling, premium editorial.","continuity_profile":"fashion_clean","shot_profile":"fashion_editorial","camera_bias":["static","close"],"color_mood":"studio softbox","frame_default":"1:1","frame_override":true },
    { "id":"tpl_014_fashion_hotel_lobby","label":"Fashion • Hotel Lobby","story_seed":"Luxury hotel lobby fashion story, elegant presence, premium atmosphere.","continuity_profile":"fashion_clean","shot_profile":"fashion_editorial","camera_bias":["wide","medium","close"],"color_mood":"luxury warm","frame_default":"9:16","frame_override":true },
    { "id":"tpl_015_fashion_museum","label":"Fashion • Museum Minimal","story_seed":"Minimal museum spaces, slow steps, elegant presence, art-meets-fashion mood.","continuity_profile":"fashion_clean","shot_profile":"fashion_editorial","camera_bias":["static","wide"],"color_mood":"minimal, clean, airy","frame_default":"16:9","frame_override":true },

    { "id":"tpl_016_edm_neon_alley","label":"EDM • Neon Alley","story_seed":"Night neon alley, confident energy, cinematic movement, pulse vibe.","continuity_profile":"bold_night","shot_profile":"dynamic_energy","camera_bias":["tracking","wide"],"color_mood":"neon, glossy","frame_default":"9:16","frame_override":true },
    { "id":"tpl_017_edm_club_stage","label":"EDM • Club Stage","story_seed":"Club stage lights, powerful presence, high-energy cinematic MV feel.","continuity_profile":"bold_night","shot_profile":"dynamic_energy","camera_bias":["wide","close"],"color_mood":"strobe, contrast","frame_default":"9:16","frame_override":true },
    { "id":"tpl_018_edm_city_motorbike","label":"EDM • Đêm Xe Máy","story_seed":"Night city motorbike vibe, fast lights, cool attitude, cinematic urban.","continuity_profile":"bold_night","shot_profile":"dynamic_energy","camera_bias":["tracking","wide"],"color_mood":"neon trails","frame_default":"9:16","frame_override":true },
    { "id":"tpl_019_edm_rooftop_neon","label":"EDM • Rooftop Neon","story_seed":"Rooftop night with neon glow, confident stance, city skyline energy.","continuity_profile":"bold_night","shot_profile":"dynamic_energy","camera_bias":["wide","tracking"],"color_mood":"neon rim light","frame_default":"9:16","frame_override":true },
    { "id":"tpl_020_edm_crosswalk","label":"EDM • Neon Crosswalk","story_seed":"Neon crosswalk at night, fast pacing, bold energy, cinematic motion.","continuity_profile":"bold_night","shot_profile":"dynamic_energy","camera_bias":["tracking","wide"],"color_mood":"neon, high contrast","frame_default":"9:16","frame_override":true },

    { "id":"tpl_021_tiktok_girlfriend_pov","label":"TikTok • Girlfriend POV","story_seed":"Warm girlfriend POV moments, playful expressions, engaging micro-actions.","continuity_profile":"casual_daily","shot_profile":"tiktok_fast","camera_bias":["close","handheld"],"color_mood":"bright, clean","frame_default":"9:16","frame_override":true },
    { "id":"tpl_022_tiktok_outfit_transition","label":"TikTok • Outfit Transition","story_seed":"Quick outfit transitions, strong poses, satisfying rhythm, trendy vibe.","continuity_profile":"fashion_clean","shot_profile":"tiktok_fast","camera_bias":["medium","close"],"color_mood":"clean, punchy","frame_default":"9:16","frame_override":true },
    { "id":"tpl_023_tiktok_cafe_day","label":"TikTok • Cafe Day","story_seed":"Cute cafe day, small gestures, smiles, relaxed everyday story.","continuity_profile":"casual_daily","shot_profile":"tiktok_fast","camera_bias":["close"],"color_mood":"warm daylight","frame_default":"9:16","frame_override":true },
    { "id":"tpl_024_tiktok_market_day","label":"TikTok • Flower Market","story_seed":"Flower market colors, gentle smiles, lively but soft short-form vibe.","continuity_profile":"casual_daily","shot_profile":"tiktok_fast","camera_bias":["close","medium"],"color_mood":"colorful, bright","frame_default":"9:16","frame_override":true },
    { "id":"tpl_025_tiktok_morning_routine","label":"TikTok • Morning Routine","story_seed":"Morning routine with soft sunlight, friendly vibe, quick cuts, engaging.","continuity_profile":"casual_daily","shot_profile":"tiktok_fast","camera_bias":["close","handheld"],"color_mood":"morning sun, clean","frame_default":"9:16","frame_override":true },

    { "id":"tpl_026_travel_mountain_cloud","label":"Travel • Mây Núi","story_seed":"Mountain clouds, freedom journey, wide landscapes, cinematic travel mood.","continuity_profile":"soft_natural","shot_profile":"travel_wide","camera_bias":["flycam","wide"],"color_mood":"natural, airy","frame_default":"16:9","frame_override":true },
    { "id":"tpl_027_travel_waterfall","label":"Travel • Thác Nước","story_seed":"Waterfall exploration, mist, sunlight, adventurous yet calm cinematic.","continuity_profile":"soft_natural","shot_profile":"travel_wide","camera_bias":["wide","close"],"color_mood":"fresh, luminous","frame_default":"16:9","frame_override":true },
    { "id":"tpl_028_travel_train_window","label":"Travel • Cửa Sổ Tàu","story_seed":"Train window journey, passing scenery, reflective mood, cinematic pacing.","continuity_profile":"muted_emotion","shot_profile":"cinematic_soft","camera_bias":["medium","close"],"color_mood":"soft, nostalgic","frame_default":"16:9","frame_override":true },
    { "id":"tpl_029_travel_old_bridge","label":"Travel • Cầu Cũ","story_seed":"Travel through an old bridge/river scene, slow pacing, cinematic calm.","continuity_profile":"soft_natural","shot_profile":"travel_wide","camera_bias":["wide","flycam"],"color_mood":"warm natural, film grain","frame_default":"16:9","frame_override":true },
    { "id":"tpl_030_travel_city_tram","label":"Travel • City Tram","story_seed":"City tram ride, passing lights, reflective mood, cinematic travel vibe.","continuity_profile":"muted_emotion","shot_profile":"cinematic_soft","camera_bias":["medium","close"],"color_mood":"cool city, soft bokeh","frame_default":"9:16","frame_override":true },

    { "id":"tpl_031_girlboss_office_power","label":"Girl Boss • Office Power","story_seed":"Confident office power story, sharp styling, assertive cinematic presence.","continuity_profile":"fashion_clean","shot_profile":"power_pose","camera_bias":["low-angle","medium"],"color_mood":"clean, contrast","frame_default":"9:16","frame_override":true },
    { "id":"tpl_032_girlboss_city_walk","label":"Girl Boss • City Walk","story_seed":"Strong city walk, purposeful strides, commanding vibe, cinematic angles.","continuity_profile":"fashion_clean","shot_profile":"power_pose","camera_bias":["wide","low-angle"],"color_mood":"modern, crisp","frame_default":"9:16","frame_override":true },
    { "id":"tpl_033_girlboss_boardroom","label":"Girl Boss • Boardroom","story_seed":"Power in boardroom, decisive presence, minimal cinematic tension.","continuity_profile":"fashion_clean","shot_profile":"power_pose","camera_bias":["low-angle","static"],"color_mood":"cool clean, premium","frame_default":"16:9","frame_override":true },
    { "id":"tpl_034_girlboss_runway","label":"Girl Boss • Runway Energy","story_seed":"Runway-like confident walk, bold posture, premium editorial vibe.","continuity_profile":"fashion_clean","shot_profile":"power_pose","camera_bias":["wide","tracking"],"color_mood":"high contrast, crisp","frame_default":"9:16","frame_override":true },
    { "id":"tpl_035_girlboss_skyline","label":"Girl Boss • Skyline","story_seed":"City skyline backdrop, confident stance, powerful wide shots, clean lines.","continuity_profile":"fashion_clean","shot_profile":"power_pose","camera_bias":["wide","low-angle"],"color_mood":"modern, clean","frame_default":"16:9","frame_override":true },

    { "id":"tpl_036_arthouse_mirror","label":"Art House • Mirror Symbol","story_seed":"Symbolic mirror scenes, slow pacing, minimal narrative, art film aesthetic.","continuity_profile":"muted_emotion","shot_profile":"arthouse_static","camera_bias":["static","wide"],"color_mood":"desaturated, film","frame_default":"16:9","frame_override":true },
    { "id":"tpl_037_arthouse_shadow_play","label":"Art House • Shadow Play","story_seed":"Light and shadow metaphor, minimal movement, cinematic negative space.","continuity_profile":"muted_emotion","shot_profile":"arthouse_static","camera_bias":["static"],"color_mood":"high shadow, film","frame_default":"16:9","frame_override":true },
    { "id":"tpl_038_arthouse_empty_hall","label":"Art House • Empty Hall","story_seed":"Large empty hall, slow footsteps, silence, emotional distance.","continuity_profile":"muted_emotion","shot_profile":"arthouse_static","camera_bias":["static","wide"],"color_mood":"cool, minimal","frame_default":"16:9","frame_override":true },
    { "id":"tpl_039_arthouse_staircase","label":"Art House • Staircase","story_seed":"Staircase geometry, slow movement, symbolic framing, film festival vibe.","continuity_profile":"muted_emotion","shot_profile":"arthouse_static","camera_bias":["static","wide"],"color_mood":"desaturated, grain","frame_default":"16:9","frame_override":true },
    { "id":"tpl_040_arthouse_window_light","label":"Art House • Window Light","story_seed":"Single window light, quiet close-ups, minimal dialogue, contemplative mood.","continuity_profile":"muted_emotion","shot_profile":"arthouse_static","camera_bias":["static","close"],"color_mood":"soft contrast, film","frame_default":"16:9","frame_override":true },

    { "id":"tpl_041_portfolio_clean_close","label":"Portfolio • Clean Close-ups","story_seed":"Professional close-ups with subtle expressions, clean studio realism.","continuity_profile":"fashion_clean","shot_profile":"portrait_clean","camera_bias":["close"],"color_mood":"studio clean","frame_default":"1:1","frame_override":true },
    { "id":"tpl_042_portfolio_expression_range","label":"Portfolio • Expression Range","story_seed":"Showcase subtle emotion range, soft light, high facial clarity.","continuity_profile":"fashion_clean","shot_profile":"portrait_clean","camera_bias":["close","medium"],"color_mood":"studio soft","frame_default":"1:1","frame_override":true },
    { "id":"tpl_043_portfolio_daylight","label":"Portfolio • Daylight Clean","story_seed":"Daylight portrait, soft shadow, premium realism, clean skin texture.","continuity_profile":"fashion_clean","shot_profile":"portrait_clean","camera_bias":["close"],"color_mood":"clean daylight","frame_default":"1:1","frame_override":true },
    { "id":"tpl_044_portfolio_bokeh_city","label":"Portfolio • City Bokeh","story_seed":"City bokeh behind, high face clarity, cinematic portrait vibe.","continuity_profile":"fashion_clean","shot_profile":"portrait_clean","camera_bias":["close","medium"],"color_mood":"city bokeh, soft rim","frame_default":"9:16","frame_override":true },
    { "id":"tpl_045_portfolio_soft_indoor","label":"Portfolio • Soft Indoor","story_seed":"Soft indoor light, gentle expressions, clean composition, premium realism.","continuity_profile":"fashion_clean","shot_profile":"portrait_clean","camera_bias":["close"],"color_mood":"warm indoor soft","frame_default":"1:1","frame_override":true },

    { "id":"tpl_046_cute_spring_picnic","label":"Cute • Picnic Mùa Xuân","story_seed":"Spring picnic, cute playful moments, warm sunshine, wholesome vibe.","continuity_profile":"casual_daily","shot_profile":"tiktok_fast","camera_bias":["close","medium"],"color_mood":"bright spring","frame_default":"9:16","frame_override":true },
    { "id":"tpl_047_cute_bookstore","label":"Cute • Hiệu Sách","story_seed":"Quiet bookstore browsing, shy smiles, cozy cinematic warmth.","continuity_profile":"casual_daily","shot_profile":"cinematic_soft","camera_bias":["medium","close"],"color_mood":"warm cozy","frame_default":"9:16","frame_override":true },
    { "id":"tpl_048_cute_home_cozy","label":"Cute • Cozy Ở Nhà","story_seed":"Cozy home vibe, warm light, small gestures, intimate calm.","continuity_profile":"casual_daily","shot_profile":"emotional_close","camera_bias":["close","handheld"],"color_mood":"warm indoor","frame_default":"9:16","frame_override":true },
    { "id":"tpl_049_cute_morning_coffee","label":"Cute • Coffee Morning","story_seed":"Morning coffee ritual, soft sunlight, calm smiles, cozy cinematic mood.","continuity_profile":"casual_daily","shot_profile":"cinematic_soft","camera_bias":["close","medium"],"color_mood":"morning sun","frame_default":"9:16","frame_override":true },
    { "id":"tpl_050_cinematic_backlight_haze","label":"Cinematic • Backlight Haze","story_seed":"Backlit haze scene, dreamy rim light, cinematic elegance, slow mood.","continuity_profile":"soft_natural","shot_profile":"cinematic_soft","camera_bias":["wide","close"],"color_mood":"hazy rim light, film grain","frame_default":"16:9","frame_override":true }
  ]
}
JSON

# ---------------- 100 STORIES ----------------
cat > stories/story_pack_100.json <<'JSON'
{
  "stories": [
    { "id":"story_001","title":"Mưa Nhẹ Đầu Ngõ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"rainy alley, first glance","HOLD":"quiet walk, memories","RELEASE":"soft acceptance, open street"} },
    { "id":"story_002","title":"Gió Trên Cầu","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"windy bridge, distant lights","HOLD":"close-up emotions, slow steps","RELEASE":"deep breath, calm release"} },
    { "id":"story_003","title":"Cà Phê Buổi Sáng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"morning sunlight, coffee aroma","HOLD":"small gestures, gentle smile","RELEASE":"warm confidence, brighter mood"} },
    { "id":"story_004","title":"Phố Cổ Lồng Đèn","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"lantern street glow","HOLD":"slow turns, nostalgic vibe","RELEASE":"romantic calm, lingering light"} },
    { "id":"story_005","title":"Biển Hoàng Hôn","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"wide beach, soft horizon","HOLD":"hair in wind, close emotions","RELEASE":"golden glow, peaceful end"} },
    { "id":"story_006","title":"Chuyến Xe Đêm","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"bus window neon","HOLD":"reflection on glass","RELEASE":"letting go, quiet smile"} },
    { "id":"story_007","title":"Hiệu Sách Im Lặng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"bookstore calm","HOLD":"pages turning, shy eyes","RELEASE":"soft warmth, gentle close"} },
    { "id":"story_008","title":"Đồi Thông Mù Sương","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"misty trees, wide shot","HOLD":"slow walk, breath visible","RELEASE":"sun ray break, relief"} },
    { "id":"story_009","title":"Chợ Hoa Sáng Rực","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"colorful flower stalls","HOLD":"playful smiles, close moments","RELEASE":"bright joy, confident pose"} },
    { "id":"story_010","title":"Rooftop Bình Minh","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"sunrise skyline","HOLD":"wind, contemplative close","RELEASE":"hopeful wide, flycam pullback"} },

    { "id":"story_011","title":"Ruộng Lúa Vàng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"golden rice field, wide","HOLD":"hand brushing rice, close","RELEASE":"flycam rise, peaceful"} },
    { "id":"story_012","title":"Bờ Sông Chiều","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"riverbank dusk, calm","HOLD":"reflection in water","RELEASE":"soft step forward"} },
    { "id":"story_013","title":"Quán Nhạc Nhỏ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"small music cafe, warm","HOLD":"listening quietly, close","RELEASE":"gentle smile, release"} },
    { "id":"story_014","title":"Con Hẻm Neon","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"neon alley night, wide","HOLD":"rain reflections, close","RELEASE":"walk away, calm power"} },
    { "id":"story_015","title":"Thư Viện Buổi Trưa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"silent library, warm","HOLD":"book pages, close eyes","RELEASE":"peaceful focus"} },
    { "id":"story_016","title":"Sân Thượng Đèn Thành Phố","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"rooftop city lights","HOLD":"hair in wind, close","RELEASE":"wide skyline, calm"} },
    { "id":"story_017","title":"Hồ Nước Sớm Mai","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"lake morning mist","HOLD":"soft footsteps, close","RELEASE":"sun rises, relief"} },
    { "id":"story_018","title":"Đường Tàu Qua Phố","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"train street wide","HOLD":"waiting moment, close","RELEASE":"train passes, release"} },
    { "id":"story_019","title":"Trạm Xe Buýt Chiều","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"bus stop dusk","HOLD":"quiet glance, close","RELEASE":"bus arrives, move on"} },
    { "id":"story_020","title":"Vườn Hoa Sau Mưa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"garden after rain","HOLD":"drops on petals, close","RELEASE":"sun breaks, calm"} },

    { "id":"story_021","title":"Bậc Thang Trắng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"white staircase geometry","HOLD":"slow steps, silence","RELEASE":"top landing, relief"} },
    { "id":"story_022","title":"Hành Lang Trống","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"empty hall wide","HOLD":"echo footsteps, close","RELEASE":"open door, release"} },
    { "id":"story_023","title":"Cửa Sổ Ánh Nắng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"single window light","HOLD":"face in soft shadow","RELEASE":"step into light"} },
    { "id":"story_024","title":"Sương Mù Trong Rừng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"misty forest wide","HOLD":"breath and leaves close","RELEASE":"sun ray opens"} },
    { "id":"story_025","title":"Thác Nước Trắng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"waterfall wide","HOLD":"mist on face close","RELEASE":"laugh softly, relief"} },
    { "id":"story_026","title":"Cánh Đồng Cỏ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"grass field wide","HOLD":"running hand close","RELEASE":"flycam pullback"} },
    { "id":"story_027","title":"Con Đường Ven Biển","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"coastal road wide","HOLD":"wind hair close","RELEASE":"horizon, peace"} },
    { "id":"story_028","title":"Bến Phà Sáng Sớm","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"ferry dock morning","HOLD":"waiting, close","RELEASE":"boat departs, release"} },
    { "id":"story_029","title":"Cầu Gỗ Qua Suối","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"wood bridge wide","HOLD":"water sound close","RELEASE":"crossing, calm"} },
    { "id":"story_030","title":"Đồi Cát Lặng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"sand hill wide","HOLD":"footprints close","RELEASE":"sunset silhouette"} },

    { "id":"story_031","title":"Bữa Tối Một Mình","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"quiet dinner table","HOLD":"slow stir, close","RELEASE":"soft acceptance"} },
    { "id":"story_032","title":"Tin Nhắn Cũ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"phone glow night","HOLD":"eyes watery close","RELEASE":"delete, release"} },
    { "id":"story_033","title":"Ô Dưới Mưa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"umbrella street","HOLD":"neon puddles close","RELEASE":"rain stops, calm"} },
    { "id":"story_034","title":"Quán Vắng Cuối Ngày","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"empty cafe wide","HOLD":"cup steam close","RELEASE":"stand up, leave"} },
    { "id":"story_035","title":"Ga Tàu Lúc Khuya","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"night station wide","HOLD":"announcement echo close","RELEASE":"train arrives, move"} },
    { "id":"story_036","title":"Bức Ảnh Cũ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"old photo found","HOLD":"memory close","RELEASE":"put away, release"} },
    { "id":"story_037","title":"Đèn Đường Lặng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"streetlamp bokeh","HOLD":"slow walk close","RELEASE":"deep breath"} },
    { "id":"story_038","title":"Lời Chào Cuối","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"last message","HOLD":"hesitation close","RELEASE":"send, let go"} },
    { "id":"story_039","title":"Khoảng Trống Trong Tim","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"silence wide","HOLD":"close-up tear","RELEASE":"soft smile"} },
    { "id":"story_040","title":"Đi Qua Nhau","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"crowded crosswalk","HOLD":"eyes meet close","RELEASE":"keep walking"} },

    { "id":"story_041","title":"Sáng Ở Chợ Hoa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"flower market wide","HOLD":"smell petals close","RELEASE":"bright laugh"} },
    { "id":"story_042","title":"Buổi Trưa Trong Phố","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"sunny street","HOLD":"shade patterns close","RELEASE":"relaxed stroll"} },
    { "id":"story_043","title":"Tiệm Đĩa Cũ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"vintage record shop","HOLD":"hands browse close","RELEASE":"music starts"} },
    { "id":"story_044","title":"Bậc Cửa Nhà","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"home doorway","HOLD":"small gesture close","RELEASE":"warm belonging"} },
    { "id":"story_045","title":"Dọn Bàn Làm Việc","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"desk clutter","HOLD":"organizing close","RELEASE":"fresh start"} },
    { "id":"story_046","title":"Mùi Nắng Trên Áo","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"sunlit fabric","HOLD":"close texture","RELEASE":"carefree smile"} },
    { "id":"story_047","title":"Tóc Bay Trong Gió","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"windy rooftop","HOLD":"hair movement close","RELEASE":"wide skyline"} },
    { "id":"story_048","title":"Đi Bộ Qua Cầu","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"bridge wide","HOLD":"hands on rail close","RELEASE":"turn to horizon"} },
    { "id":"story_049","title":"Gió Đồng Quê","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"country road wide","HOLD":"grass close","RELEASE":"flycam pullback"} },
    { "id":"story_050","title":"Mùa Xuân Tới","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"spring blossoms","HOLD":"soft smile close","RELEASE":"bright wide"} },

    { "id":"story_051","title":"Studio Trắng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"white backdrop","HOLD":"pose close","RELEASE":"editorial wide"} },
    { "id":"story_052","title":"Tòa Nhà Kính","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"glass building wide","HOLD":"reflection close","RELEASE":"confident stride"} },
    { "id":"story_053","title":"Sảnh Khách Sạn","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"hotel lobby wide","HOLD":"luxury details close","RELEASE":"turn and walk"} },
    { "id":"story_054","title":"Hành Lang Ánh Vàng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"warm corridor","HOLD":"heels sound close","RELEASE":"door opens"} },
    { "id":"story_055","title":"Thang Máy","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"elevator mirror","HOLD":"fix hair close","RELEASE":"doors open, power"} },
    { "id":"story_056","title":"Đường Phố Thời Trang","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"street runway","HOLD":"close accessories","RELEASE":"wide confident walk"} },
    { "id":"story_057","title":"Tạo Dáng Trước Gió","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"rooftop wind","HOLD":"fabric flow close","RELEASE":"hero wide"} },
    { "id":"story_058","title":"Bức Tường Tối Giản","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"minimal wall","HOLD":"face close","RELEASE":"editorial pose"} },
    { "id":"story_059","title":"Cửa Kính Neon","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"neon shopfront","HOLD":"reflection close","RELEASE":"turn away"} },
    { "id":"story_060","title":"Bộ Đồ Mới","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"outfit reveal","HOLD":"pose close","RELEASE":"walk, confidence"} },

    { "id":"story_061","title":"Neon Sau Cơn Mưa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"wet street wide","HOLD":"puddle reflections close","RELEASE":"step forward, energy"} },
    { "id":"story_062","title":"Sân Khấu Ánh Đèn","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"stage wide","HOLD":"close eyes, beat","RELEASE":"power pose, climax"} },
    { "id":"story_063","title":"Đèn Xe Lướt Qua","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"traffic light trails","HOLD":"close face, neon","RELEASE":"wide city energy"} },
    { "id":"story_064","title":"Hẻm Đêm","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"night alley wide","HOLD":"close jewelry shine","RELEASE":"walk out, glow"} },
    { "id":"story_065","title":"Cầu Vượt Neon","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"neon overpass","HOLD":"close breath, beat","RELEASE":"flycam pullback"} },
    { "id":"story_066","title":"Nhịp Đập Thành Phố","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"wide city lights","HOLD":"close eyes, rhythm","RELEASE":"climax move, release"} },
    { "id":"story_067","title":"Đêm Trên Sân Thượng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"rooftop wide","HOLD":"close confident smile","RELEASE":"wide skyline, peak"} },
    { "id":"story_068","title":"Bước Chân Nhanh","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"fast walk wide","HOLD":"close shoes, beat","RELEASE":"turn, power"} },
    { "id":"story_069","title":"Ánh Đèn Đỏ Tím","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"neon wash","HOLD":"close face highlight","RELEASE":"wide pose, energy"} },
    { "id":"story_070","title":"Gương Neon","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"mirror neon","HOLD":"close glance","RELEASE":"turn away, glow"} },

    { "id":"story_071","title":"Chuyến Đi Núi","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"mountain wide","HOLD":"close wind hair","RELEASE":"flycam rise"} },
    { "id":"story_072","title":"Mây Trắng Trên Đỉnh","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"cloud sea wide","HOLD":"close eyes, breathe","RELEASE":"wide relief"} },
    { "id":"story_073","title":"Rừng Lá Xanh","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"forest wide","HOLD":"close leaf touch","RELEASE":"sun breaks"} },
    { "id":"story_074","title":"Con Đường Đèo","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"winding road wide","HOLD":"close hands, calm","RELEASE":"wide freedom"} },
    { "id":"story_075","title":"Bình Minh Trên Đỉnh","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"sunrise wide","HOLD":"close face warm","RELEASE":"flycam pullback"} },
    { "id":"story_076","title":"Bờ Kè Thành Phố","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"city riverbank","HOLD":"close reflection","RELEASE":"wide calm"} },
    { "id":"story_077","title":"Tram Qua Phố","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"tram wide","HOLD":"close window bokeh","RELEASE":"step off, move"} },
    { "id":"story_078","title":"Cửa Sổ Máy Bay","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"airplane window","HOLD":"clouds close","RELEASE":"arrival, release"} },
    { "id":"story_079","title":"Bến Tàu","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"pier wide","HOLD":"close hands on rail","RELEASE":"boat leaves, peace"} },
    { "id":"story_080","title":"Thành Phố Mới","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"new city wide","HOLD":"close curiosity","RELEASE":"confident walk"} },

    { "id":"story_081","title":"Nhật Ký Một Ngày","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"morning routine","HOLD":"small moments close","RELEASE":"night calm"} },
    { "id":"story_082","title":"Đi Bộ Sau Giờ Làm","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"office exit","HOLD":"close tired smile","RELEASE":"relaxed night"} },
    { "id":"story_083","title":"Ghé Tiệm Bánh","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"bakery warm","HOLD":"close pastry steam","RELEASE":"happy bite"} },
    { "id":"story_084","title":"Chụp Ảnh Trên Đường","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"street photo wide","HOLD":"close camera click","RELEASE":"review, smile"} },
    { "id":"story_085","title":"Tự Tin Nhẹ Nhàng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"small pose","HOLD":"close eyes, calm","RELEASE":"wide confidence"} },
    { "id":"story_086","title":"Ngồi Bên Cửa Sổ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"window seat","HOLD":"close hands, warm","RELEASE":"soft smile"} },
    { "id":"story_087","title":"Một Cuộc Hẹn Trễ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"waiting wide","HOLD":"close watch tick","RELEASE":"laugh it off"} },
    { "id":"story_088","title":"Gặp Lại Chính Mình","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"mirror glance","HOLD":"close emotion","RELEASE":"gentle acceptance"} },
    { "id":"story_089","title":"Thư Thả Cuối Tuần","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"weekend morning","HOLD":"close cozy details","RELEASE":"outdoor calm"} },
    { "id":"story_090","title":"Cười Với Nắng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"sunny wide","HOLD":"close smile","RELEASE":"wide carefree"} },

    { "id":"story_091","title":"Hơi Thở Mùa Hè","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"summer wide","HOLD":"close sun flare","RELEASE":"golden peace"} },
    { "id":"story_092","title":"Mùa Đông Dịu","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"winter street","HOLD":"close scarf, breath","RELEASE":"warm indoor"} },
    { "id":"story_093","title":"Đêm Trước Mưa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"cloudy dusk","HOLD":"close anticipation","RELEASE":"rain starts, calm"} },
    { "id":"story_094","title":"Sau Cơn Mưa","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"wet street wide","HOLD":"close water drops","RELEASE":"sun breaks"} },
    { "id":"story_095","title":"Ánh Sáng Sau Lưng","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"backlight wide","HOLD":"close rim light","RELEASE":"soft silhouette"} },
    { "id":"story_096","title":"Bóng Đổ Trên Tường","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"shadow wide","HOLD":"close patterns","RELEASE":"step away"} },
    { "id":"story_097","title":"Một Bước Nhẹ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"start walking","HOLD":"close footsteps","RELEASE":"wide horizon"} },
    { "id":"story_098","title":"Giấc Mơ Nhẹ","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"dreamy wide","HOLD":"close soft focus","RELEASE":"wake calm"} },
    { "id":"story_099","title":"Khoảnh Khắc Bình Yên","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"quiet wide","HOLD":"close calm eyes","RELEASE":"gentle smile"} },
    { "id":"story_100","title":"Kết Thúc Êm","arc_type":"OPEN_HOLD_RELEASE","beats":{"OPEN":"soft beginning","HOLD":"emotional close","RELEASE":"peaceful end"} }
  ]
}
JSON

# ---------------- 30 TRENDS ----------------
cat > trends/trends_30.json <<'JSON'
{
  "updated_at":"2026-02-09",
  "platform":"tiktok",
  "trends":[
    { "id":"soft_girlfriend","weight":0.78,"tags":["soft","girlfriend","natural"] },
    { "id":"flycam_pullback","weight":0.58,"tags":["aerial","cinematic"] },
    { "id":"neon_rain_reflection","weight":0.62,"tags":["neon","rain","reflection"] },
    { "id":"outfit_transition","weight":0.74,"tags":["fashion","transition"] },
    { "id":"close_whisper","weight":0.50,"tags":["closeup","intimate"] },
    { "id":"golden_hour_walk","weight":0.66,"tags":["goldenhour","walk","warm"] },
    { "id":"slow_push_in","weight":0.52,"tags":["camera","pushin","emotion"] },
    { "id":"topdown_ultrawide","weight":0.46,"tags":["topdown","ultrawide","composition"] },
    { "id":"bokeh_city_lights","weight":0.55,"tags":["bokeh","city","night"] },
    { "id":"morning_routine_clean","weight":0.63,"tags":["morning","clean","routine"] },

    { "id":"handheld_real","weight":0.49,"tags":["handheld","real","documentary"] },
    { "id":"coffee_aesthetic","weight":0.57,"tags":["coffee","cozy","aesthetic"] },
    { "id":"bookstore_cozy","weight":0.53,"tags":["bookstore","cozy","quiet"] },
    { "id":"wind_hair_moment","weight":0.48,"tags":["wind","hair","cinematic"] },
    { "id":"silhouette_sunset","weight":0.45,"tags":["silhouette","sunset","soft"] },
    { "id":"reflection_glass","weight":0.47,"tags":["reflection","glass","mood"] },
    { "id":"slow_pan_reveal","weight":0.44,"tags":["pan","reveal","scene"] },
    { "id":"macro_detail","weight":0.41,"tags":["macro","detail","texture"] },
    { "id":"lantern_oldtown","weight":0.46,"tags":["lantern","oldtown","warm"] },
    { "id":"rain_umbrella","weight":0.50,"tags":["rain","umbrella","romance"] },

    { "id":"travel_wide_landscape","weight":0.54,"tags":["travel","wide","landscape"] },
    { "id":"mist_forest","weight":0.42,"tags":["mist","forest","soft"] },
    { "id":"waterfall_mist","weight":0.40,"tags":["waterfall","mist","fresh"] },
    { "id":"tram_window","weight":0.39,"tags":["tram","window","nostalgic"] },
    { "id":"studio_minimal","weight":0.51,"tags":["studio","minimal","clean"] },
    { "id":"luxury_lobby","weight":0.43,"tags":["luxury","lobby","premium"] },
    { "id":"neon_crosswalk","weight":0.44,"tags":["neon","crosswalk","urban"] },
    { "id":"edm_pulse_motion","weight":0.56,"tags":["edm","pulse","motion"] },
    { "id":"confidence_walk","weight":0.52,"tags":["confidence","walk","pose"] },
    { "id":"quiet_release_end","weight":0.37,"tags":["release","calm","ending"] }
  ]
}
JSON

# ---------------- version.json ----------------
NOW="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
cat > version.json <<JSON
{
  "version":"1.0.3",
  "updated_at":"$NOW",
  "files":{
    "templates_50":"presets/templates_50.json",
    "stories_100":"stories/story_pack_100.json",
    "trends_30":"trends/trends_30.json"
  },
  "notes":"FULL VIP pack: 50 templates + 100 stories + 30 trends (frame override true)"
}
JSON

echo "✅ Generated FULL pack."
echo "Next:"
echo "  git add . && git commit -m 'full vip pack' && git push"
