CREATE TABLE dream_analysis (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dream_symbol VARCHAR(255) NOT NULL,
    dream_tags VARCHAR(255),
    frequency_of_occurrence VARCHAR(50),
    dream_mood VARCHAR(100),
    avg_hours_sleep DECIMAL(3,1),
    meaning TEXT NOT NULL,
    conveys TEXT NOT NULL
);
INSERT INTO dream_analysis 
(dream_symbol, dream_tags, frequency_of_occurrence, dream_mood, avg_hours_sleep, meaning, conveys) VALUES
('Flying', 'freedom,escape,control', 'Common', 'Joy, Excitement', 7.0,
 'Flying represents freedom, independence, and the ability to rise above challenges.',
 'You may be seeking more control in life or trying to break free from restrictions.'),

('Falling', 'fear,insecurity,control-loss', 'Very Common', 'Fear, Anxiety', 6.5,
 'Falling indicates insecurity, instability, or fear of failure.',
 'Your subconscious is telling you to face insecurities instead of running from them.'),

('Teeth Falling Out', 'anxiety,self-image,loss', 'Common', 'Stress, Embarrassment', 6.0,
 'Losing teeth often relates to worries about appearance or fear of losing control.',
 'You may feel powerless or anxious about how others perceive you.'),

('Snake', 'warning,deceit,transformation', 'Common', 'Fear, Suspicion', 7.5,
 'Snakes can represent hidden fears, betrayal, or transformation depending on context.',
 'Your subconscious may be warning you of hidden threats or urging you to embrace change.'),

('Water', 'emotions,flow,life', 'Very Common', 'Calmness or Chaos', 8.0,
 'Water represents emotions. Calm water shows peace, stormy water reflects turmoil.',
 'It conveys the need to manage emotions and restore balance in life.'),

('Being Chased', 'stress,avoidance,threat', 'Very Common', 'Panic, Fear', 6.2,
 'Being chased means you are avoiding a problem or running away from something in real life.',
 'You need to confront your fears or responsibilities instead of escaping.'),

('Death', 'change,ending,new-beginning', 'Common', 'Sadness, Acceptance', 7.3,
 'Dreams of death rarely predict actual death but symbolize transformation or endings.',
 'It suggests you are going through major life changes or closing one chapter to start another.'),

('Exam/Test', 'pressure,performance,judgment', 'Very Common', 'Stress, Nervousness', 5.9,
 'Exam dreams symbolize self-evaluation, pressure, or fear of failure.',
 'It conveys that you may be doubting your abilities or preparing for challenges.'),

('Baby', 'innocence,new-beginnings,responsibility', 'Common', 'Love, Joy, Worry', 7.8,
 'Babies symbolize innocence, new beginnings, or responsibility.',
 'It reflects a desire for growth, creation, or the birth of new ideas.'),

('Fire', 'passion,anger,destruction', 'Common', 'Intensity, Anger, Passion', 6.7,
 'Fire may represent passion, destruction, or purification.',
 'It conveys strong emotions burning within you—either destructive or transformative.'),

('Naked in Public', 'vulnerability,insecurity,exposure', 'Common', 'Embarrassment, Fear', 6.4,
 'Being naked in public shows vulnerability or fear of exposure.',
 'Your subconscious suggests insecurity or fear of judgment from others.'),

('House', 'self,mind,identity', 'Very Common', 'Neutral, Reflective', 7.6,
 'Houses represent the self. Different rooms symbolize different life aspects.',
 'It conveys exploration of your inner self, memories, and hidden emotions.'),

('Driving', 'control,path,direction', 'Common', 'Confidence or Anxiety', 6.9,
 'Driving symbolizes control over your life path. Losing control suggests anxiety.',
 'It conveys whether you feel in charge of your own journey or not.'),

('Lost', 'confusion,uncertainty,direction', 'Common', 'Fear, Helplessness', 6.1,
 'Being lost reflects confusion, lack of clarity, or insecurity.',
 'Your subconscious is signaling the need to find direction or make decisions.'),

('Storm', 'conflict,chaos,challenge', 'Common', 'Fear, Stress', 6.8,
 'Storms in dreams show emotional conflict, chaos, or difficulties.',
 'It conveys that you are facing emotional turbulence that needs resolution.'),

('Shadow', 'hidden,self,fears', 'Rare', 'Fear, Mystery', 7.2,
 'A shadow represents your hidden self or suppressed desires.',
 'It conveys that you may need to face your inner fears.'),

('Blood', 'vitality,life,energy', 'Common', 'Fear, Strength', 6.5,
 'Blood reflects life energy, vitality, and sometimes loss.',
 'It conveys strength or exhaustion depending on context.'),

('Climbing', 'ambition,progress,goals', 'Common', 'Determination, Stress', 7.4,
 'Climbing mountains or stairs shows ambition and challenges.',
 'It conveys persistence and the need to overcome struggles.'),

('Keys', 'opportunity,access,solutions', 'Rare', 'Hope, Curiosity', 7.1,
 'Keys symbolize solutions, opportunities, or access to hidden truths.',
 'It conveys that answers to your problems are within reach.'),

('Bridge', 'transition,journey,crossing', 'Common', 'Uncertainty, Hope', 7.0,
 'Bridges symbolize transitions and moving between phases of life.',
 'It conveys you are crossing from one stage to another.'),

('Mirror', 'self-reflection,identity,truth', 'Common', 'Confusion, Awareness', 6.6,
 'Mirrors represent self-examination and identity issues.',
 'It conveys the need to reflect on how you see yourself.'),

('Money', 'value,success,opportunity', 'Very Common', 'Greed, Confidence', 6.9,
 'Money dreams represent self-worth and desire for success.',
 'It conveys your values and ambitions in life.'),

('School', 'learning,childhood,lessons', 'Very Common', 'Stress, Curiosity', 7.3,
 'School dreams suggest lessons to be learned or unresolved past issues.',
 'It conveys a reminder to keep learning and adapting.'),

('Food', 'nourishment,desire,satisfaction', 'Common', 'Joy, Craving', 7.7,
 'Food represents emotional or spiritual nourishment.',
 'It conveys fulfillment or hunger for more in life.'),

('Birds', 'freedom,spirituality,hope', 'Common', 'Peace, Joy', 7.5,
 'Birds symbolize freedom, perspective, and higher vision.',
 'It conveys a sense of release and spiritual growth.'),

('Train', 'journey,destiny,routine', 'Common', 'Neutral, Determined', 7.2,
 'Trains symbolize life’s direction and predictable paths.',
 'It conveys you may feel locked into a routine or following destiny.'),

('Mountains', 'challenge,goals,struggle', 'Common', 'Determination, Awe', 7.6,
 'Mountains represent challenges and goals.',
 'It conveys ambition and the effort required to succeed.'),

('Forest', 'mystery,subconscious,nature', 'Common', 'Fear, Curiosity', 7.3,
 'Forests symbolize the subconscious and unknown.',
 'It conveys you may be lost in confusion or searching for inner truth.'),

('Bridge Collapse', 'fear,transition,failure', 'Rare', 'Panic, Fear', 6.4,
 'A collapsing bridge means fear of failure in transitions.',
 'It conveys instability during major life changes.'),

('Broken Phone', 'communication,connection,isolation', 'Common', 'Frustration, Loneliness', 6.8,
 'Phones represent communication. A broken phone means disconnection.',
 'It conveys fear of losing contact with someone important.'),

('Celebrity', 'admiration,aspiration,fame', 'Common', 'Excitement, Envy', 7.5,
 'Meeting celebrities symbolizes aspiration or desire for recognition.',
 'It conveys a need for validation or self-worth.'),

('Accident', 'danger,loss,warning', 'Common', 'Fear, Shock', 6.6,
 'Accidents in dreams symbolize loss of control or sudden change.',
 'It conveys caution about reckless actions or hidden dangers.'),

('Time/Clock', 'urgency,deadline,ageing', 'Very Common', 'Anxiety, Stress', 6.2,
 'Clocks symbolize time pressure and aging.',
 'It conveys worry about running out of time or missed opportunities.'),

('Crying', 'grief,release,healing', 'Common', 'Sadness, Relief', 7.8,
 'Crying represents emotional release or suppressed feelings.',
 'It conveys a need for healing or acceptance.'),

('Marriage', 'union,commitment,relationship', 'Common', 'Joy, Nervousness', 7.1,
 'Marriage dreams symbolize partnership and unity.',
 'It conveys integration of two parts of yourself or commitment fears.'),

('Infidelity', 'trust,betrayal,insecurity', 'Common', 'Anger, Anxiety', 6.5,
 'Cheating dreams indicate insecurity or lack of trust.',
 'It conveys unresolved fears of betrayal or doubt in relationships.'),

('Running Late', 'stress,time-pressure,anxiety', 'Very Common', 'Anxiety, Panic', 6.0,
 'Being late symbolizes fear of missing opportunities.',
 'It conveys poor time management or pressure to perform.'),

('Lost Luggage', 'identity,belongings,travel', 'Rare', 'Frustration, Confusion', 7.2,
 'Lost luggage means loss of identity or resources.',
 'It conveys feeling unprepared or lacking stability.'),

('Prison', 'restriction,control,limitations', 'Rare', 'Fear, Helplessness', 6.7,
 'Prison dreams symbolize feeling trapped or restricted.',
 'It conveys the need for freedom or breaking out of limitations.'),

('Zombie', 'fear,anxiety,apocalypse', 'Common', 'Fear, Panic', 6.3,
 'Zombies symbolize stress, feeling drained, or fear of society collapse.',
 'It conveys emotional exhaustion or conformity worries.'),

('Alien', 'unknown,curiosity,strangeness', 'Rare', 'Fear, Wonder', 7.0,
 'Aliens symbolize the unknown or things beyond understanding.',
 'It conveys curiosity about new experiences or fear of change.'),

('Being Watched', 'paranoia,exposure,judgment', 'Common', 'Fear, Anxiety', 6.8,
 'Being watched means insecurity and fear of judgment.',
 'It conveys a lack of privacy or overthinking others’ opinions.'),

('Winning Lottery', 'luck,success,desire', 'Rare', 'Excitement, Hope', 7.6,
 'Lottery dreams symbolize sudden opportunities and wish fulfillment.',
 'It conveys hope for change or luck in life.'),

('Fighting', 'conflict,anger,defense', 'Common', 'Anger, Stress', 6.9,
 'Fighting represents internal or external conflict.',
 'It conveys unresolved anger or struggles for dominance.'),

('Phone Ringing', 'communication,message,urgency', 'Common', 'Alertness, Anxiety', 7.1,
 'A ringing phone symbolizes incoming news or messages.',
 'It conveys expectation or fear of important communication.'),

('Drowning', 'fear,emotions,helplessness', 'Common', 'Panic, Despair', 6.2,
 'Drowning represents being overwhelmed by emotions.',
 'It conveys the need to regain control over feelings.'),

('Cave', 'mystery,hidden,inner-self', 'Rare', 'Curiosity, Fear', 7.4,
 'Caves represent the subconscious and hidden truths.',
 'It conveys the need to explore your inner depths.'),

('Lost Child', 'fear,responsibility,guilt', 'Rare', 'Fear, Sadness', 6.5,
 'A lost child represents fear of failure or lost innocence.',
 'It conveys unresolved responsibilities or guilt.'),

('Flood', 'emotions,overwhelm,disaster', 'Common', 'Fear, Anxiety', 6.6,
 'Floods symbolize emotional overwhelm and disaster.',
 'It conveys the need to manage overwhelming feelings.'),

('Hospital', 'healing,health,vulnerability', 'Common', 'Fear, Hope', 7.2,
 'Hospitals represent healing and vulnerability.',
 'It conveys the need for recovery or self-care.'),

('Car Crash', 'accident,loss,control', 'Common', 'Shock, Fear', 6.3,
 'Car crashes represent loss of control and sudden disruptions.',
 'It conveys fear of failure or unexpected setbacks.'),

('Ghost', 'spirit,past,fear', 'Common', 'Fear, Curiosity', 6.9,
 'Ghosts symbolize unresolved past issues or hidden fears.',
 'It conveys the need to confront memories or unfinished business.'),

('Bridge Over Water', 'transition,emotions,journey', 'Rare', 'Hope, Calmness', 7.4,
 'A bridge over water means emotional transition and crossing into new phases.',
 'It conveys moving through emotional challenges into clarity.'),

('Clocks Stopping', 'time,death,urgency', 'Rare', 'Fear, Confusion', 6.5,
 'A stopped clock represents endings or fear of time running out.',
 'It conveys awareness of mortality or delays in progress.'),

('Lost Shoes', 'identity,foundation,journey', 'Rare', 'Confusion, Vulnerability', 6.8,
 'Shoes represent stability. Losing them means lack of direction or insecurity.',
 'It conveys feeling unprepared or lost in life path.'),

('Elevator', 'progress,rise,fall', 'Common', 'Anxiety, Hope', 7.0,
 'Elevators symbolize rapid change—rising suggests progress, falling suggests fear.',
 'It conveys emotional ups and downs in your life.'),

('Crying Baby', 'responsibility,stress,need', 'Common', 'Stress, Sadness', 7.3,
 'A crying baby means responsibilities or neglected needs.',
 'It conveys feeling overwhelmed or lacking support.'),

('Bridge Under Construction', 'transition,patience,incompletion', 'Rare', 'Uncertainty, Stress', 7.2,
 'An incomplete bridge suggests unfinished transitions.',
 'It conveys the need to wait before moving forward.'),

('Spider', 'fear,creativity,control', 'Common', 'Fear, Caution', 6.9,
 'Spiders represent creativity but also fear of entrapment.',
 'It conveys hidden anxieties or the ability to create your own fate.'),

('Clown', 'fear,happiness,deception', 'Rare', 'Confusion, Fear', 6.6,
 'Clowns can symbolize humor but also deception.',
 'It conveys duality—what seems funny may hide fear.'),

('Bridge on Fire', 'loss,transition,endings', 'Rare', 'Fear, Shock', 6.5,
 'A burning bridge suggests severing ties or irreversible endings.',
 'It conveys letting go of the past with no return.'),

('Cemetery', 'death,closure,memories', 'Common', 'Sadness, Reflection', 6.8,
 'Cemeteries symbolize endings, closure, or respect for the past.',
 'It conveys the need for acceptance and peace with losses.'),

('Crying Friend', 'relationships,empathy,support', 'Common', 'Sadness, Compassion', 7.6,
 'Seeing a friend cry means empathy and concern.',
 'It conveys the need to support loved ones or deal with shared emotions.'),

('Clothes Torn', 'vulnerability,insecurity,exposure', 'Common', 'Embarrassment, Anxiety', 6.7,
 'Torn clothes symbolize vulnerability or shame.',
 'It conveys fear of exposure or judgment.'),

('Crying Mother', 'family,connection,emotions', 'Rare', 'Sadness, Concern', 7.8,
 'A crying mother reflects deep emotional bonds or guilt.',
 'It conveys unresolved family issues or longing for comfort.'),

('Bridge Collapse Into Water', 'failure,transition,emotions', 'Rare', 'Fear, Panic', 6.4,
 'A bridge falling into water symbolizes failed transitions and emotional overwhelm.',
 'It conveys instability in handling emotional challenges.'),

('Forest Fire', 'destruction,anger,change', 'Rare', 'Fear, Shock', 6.9,
 'A forest fire represents emotional destruction or cleansing.',
 'It conveys that deep changes are burning away the old to make room for new.'),

('Pregnancy', 'growth,new-life,responsibility', 'Common', 'Hope, Fear', 7.5,
 'Pregnancy dreams symbolize growth, creation, and responsibility.',
 'It conveys new beginnings or creative projects forming.'),

('Bridge with Broken Planks', 'transition,danger,risk', 'Rare', 'Fear, Hesitation', 6.6,
 'A broken bridge suggests risky transitions.',
 'It conveys fear of failure during life changes.'),

('Crowd', 'society,pressure,identity', 'Common', 'Stress, Confusion', 6.8,
 'Dreaming of crowds represents social pressure and conformity.',
 'It conveys a need to find individuality within the group.'),

('Crying Child', 'innocence,vulnerability,needs', 'Common', 'Sadness, Compassion', 7.2,
 'A crying child means neglected innocence or vulnerability.',
 'It conveys the need to reconnect with your inner child.'),

('Plane Crash', 'failure,loss,control', 'Rare', 'Fear, Panic', 6.3,
 'Plane crashes symbolize major failures or fears of losing control.',
 'It conveys fear of high risks or plans falling apart.'),

('Job Interview', 'career,judgment,pressure', 'Common', 'Stress, Anxiety', 6.9,
 'Interviews in dreams represent self-evaluation and performance anxiety.',
 'It conveys worry about opportunities or proving yourself.'),

('Lost Wallet', 'identity,value,resources', 'Common', 'Frustration, Fear', 6.7,
 'Losing a wallet symbolizes lost identity, value, or resources.',
 'It conveys insecurity about financial or personal stability.'),

('Wedding Ring', 'commitment,relationship,promise', 'Common', 'Joy, Anxiety', 7.4,
 'A wedding ring symbolizes commitment and unity.',
 'It conveys lasting bonds, promises, or fear of losing them.'),

('Blood', 'life,energy,fear', 'Common', 'Fear, Shock', 6.6,
 'Blood in dreams symbolizes life force, vitality, or fear of loss.',
 'It conveys deep emotions or exhaustion.'),

('Rainbow', 'hope,success,peace', 'Rare', 'Joy, Calmness', 7.8,
 'Rainbows symbolize hope, blessings, and peace after hardship.',
 'It conveys optimism and renewed faith.'),

('Cave', 'mystery,inner-self,secrets', 'Rare', 'Curiosity, Fear', 6.9,
 'Caves represent the unconscious or hidden truths.',
 'It conveys self-discovery or retreat from outside pressures.'),

('Tornado', 'chaos,destruction,change', 'Common', 'Fear, Panic', 6.5,
 'Tornadoes symbolize overwhelming emotions and sudden change.',
 'It conveys feeling out of control or emotionally unstable.'),

('Snake Bite', 'fear,threat,betrayal', 'Common', 'Fear, Anger', 6.7,
 'A snake bite suggests hidden threats or betrayal.',
 'It conveys danger in close relationships or fear of harm.'),

('Ocean Storm', 'emotions,chaos,struggle', 'Rare', 'Fear, Anxiety', 6.6,
 'Storms at sea represent emotional turmoil.',
 'It conveys struggles with overwhelming feelings.'),

('School Exams', 'stress,evaluation,pressure', 'Very Common', 'Stress, Fear', 7.0,
 'Exams in dreams symbolize evaluation, fear of failure, or pressure to perform.',
 'It conveys anxiety about expectations and self-worth.'),

('Fireworks', 'celebration,joy,excitement', 'Rare', 'Happiness, Excitement', 7.9,
 'Fireworks symbolize celebration and bursts of energy.',
 'It conveys joy, recognition, and social happiness.'),

('Jail', 'restriction,punishment,control', 'Common', 'Fear, Hopelessness', 6.5,
 'Jail symbolizes restrictions, guilt, or lack of freedom.',
 'It conveys feeling trapped by choices or circumstances.'),

('Treasure Chest', 'wealth,secrets,reward', 'Rare', 'Excitement, Curiosity', 7.6,
 'Finding treasure means hidden potential or rewards.',
 'It conveys discovery of talents, opportunities, or wisdom.'),

('Horse', 'freedom,strength,journey', 'Common', 'Calmness, Energy', 7.3,
 'Horses symbolize freedom, power, and progress.',
 'It conveys strength to move forward and overcome obstacles.'),

('Bridge Floating in Air', 'impossible,dreamlike,transition', 'Rare', 'Awe, Fear', 6.7,
 'A floating bridge suggests magical transitions or unreal goals.',
 'It conveys imagination and the desire to escape limits.'),

('Lion', 'power,courage,leadership', 'Common', 'Confidence, Fear', 7.2,
 'Lions symbolize courage and dominance.',
 'It conveys inner strength or fear of authority.'),

('Mirror', 'identity,self-reflection,truth', 'Common', 'Curiosity, Fear', 7.0,
 'Mirrors represent self-reflection or fear of seeing truth.',
 'It conveys a search for identity or confronting flaws.'),

('Explosion', 'anger,shock,change', 'Rare', 'Fear, Stress', 6.4,
 'Explosions symbolize sudden outbursts or disruptive changes.',
 'It conveys repressed anger or rapid transformation.'),

('Bridge Covered in Fog', 'transition,uncertainty,fear', 'Rare', 'Confusion, Hesitation', 6.8,
 'A foggy bridge represents unclear transitions or paths.',
 'It conveys uncertainty about the future.'),

('Keys', 'opportunity,access,solutions', 'Common', 'Hope, Curiosity', 7.4,
 'Keys symbolize opportunities and unlocking solutions.',
 'It conveys empowerment and readiness for change.'),

('Shattered Glass', 'fragility,truth,endings', 'Common', 'Shock, Sadness', 6.9,
 'Broken glass symbolizes fragile relationships or sudden truth.',
 'It conveys endings or awareness of reality.'),

('Being Followed', 'fear,paranoia,threat', 'Very Common', 'Fear, Anxiety', 6.5,
 'Being chased or followed represents avoidance of fears.',
 'It conveys pressure from unresolved issues or people.'),

('Bridge Over Lava', 'danger,transition,challenge', 'Rare', 'Fear, Stress', 6.6,
 'A bridge over lava suggests risky changes with high stakes.',
 'It conveys danger but also courage to cross challenges.'),

('Wedding', 'commitment,union,new-phase', 'Common', 'Happiness, Excitement', 7.5,
 'Weddings symbolize unity, new beginnings, and commitments.',
 'It conveys positive changes or responsibilities.'),

('Bridge Made of Rope', 'transition,insecurity,risk', 'Rare', 'Fear, Uncertainty', 6.7,
 'A rope bridge symbolizes fragile transitions.',
 'It conveys lack of stability or trust in new paths.'),

('Falling Teeth', 'anxiety,aging,insecurity', 'Very Common', 'Fear, Stress', 6.6,
 'Teeth falling out symbolize insecurity or fear of loss.',
 'It conveys anxiety about appearance, power, or aging.'),

('Flying', 'freedom,escape,ambition', 'Very Common', 'Joy, Excitement', 7.8,
 'Flying dreams symbolize freedom and high ambitions.',
 'It conveys success, independence, or desire for escape.'),

('Bridge to Nowhere', 'transition,emptiness,meaning', 'Rare', 'Confusion, Fear', 6.8,
 'A bridge ending in nothing suggests lost purpose or goals.',
 'It conveys fear of meaningless efforts or dead ends.');


