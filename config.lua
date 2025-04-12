Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10                              -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05                       -- Percent that goes to sales person from a finance sale 5%
Config.PaymentWarning = 10                            -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24                           -- time in hours between payment being due
Config.MinimumDown = 10                               -- minimum percentage allowed down
Config.MaximumPayments = 24                           -- maximum payments allowed
Config.PreventFinanceSelling = false                  -- allow/prevent players from using /transfervehicle if financed
Config.FilterByMake = false                           -- adds a make list before selecting category in shops
Config.SortAlphabetically = true                      -- will sort make, category, and vehicle selection menus alphabetically
Config.HideCategorySelectForOne = true                -- will hide the category selection menu if a shop only sells one category of vehicle or a make has only one category
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-56.727394104004, -1086.2325439453),
                vector2(-60.612808227539, -1096.7795410156),
                vector2(-58.26834487915, -1100.572265625),
                vector2(-35.927803039551, -1109.0034179688),
                vector2(-34.427627563477, -1108.5111083984),
                vector2(-33.9, -1108.96),
                vector2(-35.95, -1114.32),
                vector2(-31.58, -1115.21),
                vector2(-27.48, -1103.42),
                vector2(-33.342102050781, -1101.0377197266),
                vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 25.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport',                 -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42),             -- Blip Location
        ['ReturnLocation'] = vector3(-44.74, -1082.58, 26.68),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-56.79, -1109.85, 26.43, 71.5), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-29.53, -1103.67, 26.42),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-45.65, -1093.66, 25.44, 69.5), -- where the vehicle will spawn on display
                defaultVehicle = 'ardent',                       -- Default display vehicle
                chosenVehicle = 'ardent'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-48.27, -1101.86, 25.44, 294.5),
                defaultVehicle = 'schafter2',
                chosenVehicle = 'schafter2'
            },
            [3] = {
                coords = vector4(-39.6, -1096.01, 25.44, 66.5),
                defaultVehicle = 'coquette',
                chosenVehicle = 'coquette'
            },
            [4] = {
                coords = vector4(-51.21, -1096.77, 25.44, 254.5),
                defaultVehicle = 'vigero',
                chosenVehicle = 'vigero'
            },
            [5] = {
                coords = vector4(-40.18, -1104.13, 25.44, 338.5),
                defaultVehicle = 'rhapsody',
                chosenVehicle = 'rhapsody'
            },
            [6] = {
                coords = vector4(-43.31, -1099.02, 25.44, 52.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [7] = {
                coords = vector4(-50.66, -1093.05, 25.44, 222.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [8] = {
                coords = vector4(-44.28, -1102.47, 25.44, 298.5),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'managed', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75    -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['showBlip'] = true,   -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,     -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1256.18, -368.23, 36.91),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 35.91, 205.08),
                defaultVehicle = 'italirsx',
                chosenVehicle = 'italirsx'
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 35.91, 247.08),
                defaultVehicle = 'italigtb',
                chosenVehicle = 'italigtb'
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 35.91, 297.12),
                defaultVehicle = 'nero',
                chosenVehicle = 'nero'
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 35.91, 56.44),
                defaultVehicle = 'bati',
                chosenVehicle = 'bati'
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 35.91, 55.63),
                defaultVehicle = 'carbonrs',
                chosenVehicle = 'carbonrs'
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 35.91, 53.24),
                defaultVehicle = 'hexer',
                chosenVehicle = 'hexer'
            },
        }
    },                         -- Add your next table under this comma
    ['pcd'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
            vector3(83.63, 6572.85, 31.66),
            vector3(46.79, 6536.91, 31.66),
            vector3(90.99, 6491.54, 31.66),
            vector3(130.07, 6532.07, 31.66)
            },
            ['minZ'] = 30.5,                                         -- min height of the shop zone
            ['maxZ'] = 42.0,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Paleto Car Dealer',                 -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(91.7, 6535.37, 31.66),             -- Blip Location
        ['ReturnLocation'] = vector4(87.31, 6567.45, 31.14, 46.04),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(64.76, 6545.09, 31.14, 221.02),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(72.92, 6536.61, 31.15, 223.43), -- Spawn location for test drive
        ['FinanceZone'] = vector3(80.52, 6546.36, 36.64),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(110.96, 6536.75, 30.30, 191.89), -- where the vehicle will spawn on display
                defaultVehicle = 'brainshack',                       -- Default display vehicle
                chosenVehicle = 'brainshack'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(104.25, 6536.79, 30.30, 178.17), -- where the vehicle will spawn on display
                defaultVehicle = 'brainshack',                       -- Default display vehicle
                chosenVehicle = 'brainshack'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [3] = {
                coords = vector4(99.8, 6535.98, 30.16, 191.35), -- where the vehicle will spawn on display
                defaultVehicle = 'is300',                       -- Default display vehicle
                chosenVehicle = 'is300'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [4] = {
                coords = vector4(90.61, 6526.49, 30.74, 251.04),
                defaultVehicle = 'is300',
                chosenVehicle = 'is300'
            },
            [5] = {
                coords = vector4(89.71, 6521.2, 30.80, 268.01),
                defaultVehicle = 'brainshack',
                chosenVehicle = 'brainshack'
            },
            [6] = {
                coords = vector4(89.62, 6515.64, 30.80, 265.29),
                defaultVehicle = 'brainshack',
                chosenVehicle = 'brainshack'
            }
        },
    },
    ['fid'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
            vector3(547.14, -228.02, 50.5),
            vector3(521.58, -280.33, 49.98),
            vector3(542.42, -290.13, 49.98),
            vector3(567.65, -237.6, 49.98)
            },
            ['minZ'] = 39.5,                                         -- min height of the shop zone
            ['maxZ'] = 60.5,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Fox Imports Dealer',                 -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(556.38, -235.69, 49.98),             -- Blip Location
        ['ReturnLocation'] = vector4(532.75, -244.19, 49.0, 301.72),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(545.51, -248.33, 49.98, 350.64),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(543.13, -247.2, 49.98, 339.68), -- Spawn location for test drive
        ['FinanceZone'] = vector3(561.81, -241.74, 49.98),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(561.69, -245.58, 49.98, 333.94), -- where the vehicle will spawn on display
                defaultVehicle = 'is300',                       -- Default display vehicle
                chosenVehicle = 'is300'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(552.13, -265.05, 49.98, 23.27), -- where the vehicle will spawn on display
                defaultVehicle = 'is300',                       -- Default display vehicle
                chosenVehicle = 'is300'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [3] = {
                coords = vector4(547.95, -273.51, 49.98, 11.93), -- where the vehicle will spawn on display
                defaultVehicle = 'is300',                       -- Default display vehicle
                chosenVehicle = 'is300'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [4] = {
                coords = vector4(543.84, -281.97, 49.98, 15.19),
                defaultVehicle = 'is300',
                chosenVehicle = 'is300' 
            },
            [5] = {
                coords = vector4(535.17, -257.11, 49.98, 285.15),
                defaultVehicle = 'is300',                       -- Default display vehicle
                chosenVehicle = 'is300'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [6] = {
                coords = vector4(531.09, -265.72, 49.98, 292.03),
                defaultVehicle = 'is300',                       -- Default display vehicle
                chosenVehicle = 'is300'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [7] = {
                coords = vector4(527.1, -274.53, 49.98, 292.35),
                defaultVehicle = 'is300',
                chosenVehicle = 'is300'
            }
        },
    },
    ['cpm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
        vector2(5156.23, -5201.05),
        vector2(5158.37, -5149.93),
        vector2(5118.38, -5151.98),
        vector2(5132.16, -5202.18)
            },
            ['minZ'] = -12.7,                                         -- min height of the shop zone
            ['maxZ'] = 13.85,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Cayo Perico Motorsport',                 -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(5138.51, -5170.49, 2.11),             -- Blip Location
        ['ReturnLocation'] = vector4(5116.27, -5191.43, 2.4, 350.66),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(5128.48, -5148.12, 2.23, 269.36),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(5122.96, -5148.19, 2.25, 273.4), -- Spawn location for test drive
        ['FinanceZone'] = vector3(5129.72, -5155.91, 2.11),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(5125.44, -5193.98, 2.11, 358.77), -- where the vehicle will spawn on display
                defaultVehicle = 'blazer',                       -- Default display vehicle
                chosenVehicle = 'blazer'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(5125.92, -5172.04, 2.11, 359.02), -- where the vehicle will spawn on display
                defaultVehicle = 'sanchez',                       -- Default display vehicle
                chosenVehicle = 'sanchez'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [3] = {
                coords = vector4(5125.93, -5165.44, 2.11, 359.5),
                defaultVehicle = 'brawler',
                chosenVehicle = 'brawler'
            },
            [4] = {
                coords = vector4(5125.93, -5159.86, 2.11, 359.71),
                defaultVehicle = 'bifta',
                chosenVehicle = 'bifta'
            },
            [5] = {
                coords = vector4(5145.05, -5153.78, 2.11, 262.28),
                defaultVehicle = 'bfinjection',
                chosenVehicle = 'bfinjection'
            },
            [6] = {
                coords = vector4(5151.34, -5153.85, 2.11, 259.78),
                defaultVehicle = 'bifta',
                chosenVehicle = 'bifta'
            }
        },
    },
    ['lcd'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
        vector2(-218.51, -1158.51),
        vector2(-160.73, -1158.22),
        vector2(-160.95, -1178.74),
        vector2(-216.73, -1178.47)
            },
            ['minZ'] = 22.5,                                         -- min height of the shop zone
            ['maxZ'] = 35,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Luxary Car Motorsport',                 -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-185.15, -1169.95, 22.94),             -- Blip Location
        ['ReturnLocation'] = vector4(-211.69, -1179.95, 23.03, 89.06),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-177.14, -1171.41, 22.94, 181.86),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-212.32, -1184.93, 23.03, 269.32), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-195.33, -1168.97, 23.76),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-185.36, -1174.86, 23.13, 320.72), -- where the vehicle will spawn on display
                defaultVehicle = 'brainshack',                       -- Default display vehicle
                chosenVehicle = 'brainshack'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-177.01, -1161.77, 23.04, 223.11), -- where the vehicle will spawn on display
                defaultVehicle = 'skyline',                       -- Default display vehicle
                chosenVehicle = 'skyline'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [3] = {
                coords = vector4(-170.63, -1162.02, 23.04, 210.75),
                defaultVehicle = 'dragekcivick',
                chosenVehicle = 'dragekcivick'
            },
            [4] = {
                coords = vector4(-164.84, -1161.8, 23.04, 219.59),
                defaultVehicle = 'oldss',
                chosenVehicle = 'oldss'
            },
            [5] = {
                coords = vector4(-164.14, -1168.31, 23.04, 91.37),
                defaultVehicle = 'is300',
                chosenVehicle = 'is300'
            },
            [6] = {
                coords = vector4(-164.47, -1174.99, 23.04, 50.24),
                defaultVehicle = 'brainshack',
                chosenVehicle = 'brainshack'
            }
        },
    },
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0,                                            -- min height of the shop zone
            ['maxZ'] = 5.0,                                            -- max height of the shop zone
            ['size'] = 6.2                                             -- size of the vehicles zones
        },
        ['Job'] = 'none',                                              -- Name of job or none
        ['ShopLabel'] = 'Marina Shop',                                 -- Blip name
        ['showBlip'] = true,                                           -- true or false
        ['blipSprite'] = 410,                                          -- Blip sprite
        ['blipColor'] = 3,                                             -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                  -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6),                -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-729.86, -1319.13, 1.6),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark',                      -- Default display vehicle
                chosenVehicle = 'seashark'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['boats2'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(4880.43, -5158.33),
                vector2(4962.54, -5126.99),
                vector2(4932.78, -5194.45),
                vector2(4875.6, -5170.43)
            },
            ['minZ'] = 0.0,                                            -- min height of the shop zone
            ['maxZ'] = 5.0,                                            -- max height of the shop zone
            ['size'] = 6.2                                             -- size of the vehicles zones
        },
        ['Job'] = 'none',                                              -- Name of job or none
        ['ShopLabel'] = 'Marina Shop',                                 -- Blip name
        ['showBlip'] = true,                                           -- true or false
        ['blipSprite'] = 410,                                          -- Blip sprite
        ['blipColor'] = 3,                                             -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                  -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(4905.01, -5180.98, 2.49),                -- Blip Location
        ['ReturnLocation'] = vector3(4919.57, -5180.46, -0.32),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(4947.77, -5134.58, -0.25, 69.0),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(4942.45, -5145.87, -0.28, 65.47), -- Spawn location for test drive
        ['FinanceZone'] = vector3(4895.06, -5176.64, 2.47),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(4911.66, -5173.99, -0.28, 337.5), -- where the vehicle will spawn on display
                defaultVehicle = 'marquis',                      -- Default display vehicle
                chosenVehicle = 'marquis'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(4902.92, -5169.79, -0.32, 333.22),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [3] = {
                coords = vector4(4895.12, -5165.35, -0.37, 333.95),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [4] = {
                coords = vector4(4886.22, -5162.21, -0.48, 335.0),
                defaultVehicle = 'seashark',
                chosenVehicle = 'seashark'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99,                                            -- min height of the shop zone
            ['maxZ'] = 16.99,                                            -- max height of the shop zone
            ['size'] = 7.0,                                              -- size of the vehicles zones
        },
        ['Job'] = 'none',                                                -- Name of job or none
        ['ShopLabel'] = 'Air Shop',                                      -- Blip name
        ['showBlip'] = true,                                             -- true or false
        ['blipSprite'] = 251,                                            -- Blip sprite
        ['blipColor'] = 3,                                               -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                    -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99),                -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2),    -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1619.52, -3152.64, 14.0),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus',                          -- Default display vehicle
                chosenVehicle = 'volatus'                            -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['air2'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(4432.97, -4483.78),
                vector2(4420.76, -4449.84),
                vector2(4448.71, -4439.74),
                vector2(4460.49, -4473.6)
            },
            ['minZ'] = 0.0,                                            -- min height of the shop zone
            ['maxZ'] = 10.0,                                            -- max height of the shop zone
            ['size'] = 7.0,                                              -- size of the vehicles zones
        },
        ['Job'] = 'none',                                                -- Name of job or none
        ['ShopLabel'] = 'Air Shop',                                      -- Blip name
        ['showBlip'] = true,                                             -- true or false
        ['blipSprite'] = 251,                                            -- Blip sprite
        ['blipColor'] = 3,                                               -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                    -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(4438.79, -4460.62, 4.33),                -- Blip Location
        ['ReturnLocation'] = vector3(4448.2, -4483.67, 4.23),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(4434.93, -4490.33, 4.23, 103.79),    -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(4447.52, -4523.19, 4.19, 104.7), -- Spawn location for test drive
        ['FinanceZone'] = vector3(4427.53, -4451.94, 7.24),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(4440.86, -4463.2, 4.33, 197.35),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(856.91046142578, -1181.4660644532),
                vector2(922.666015625, -1178.8934326172),
                vector2(921.7074584961, -1153.4362792968),
                vector2(894.02233886718, -1153.185180664),
                vector2(894.08135986328, -1154.2734375),
                vector2(887.91284179688, -1154.3431396484),
                vector2(887.76403808594, -1155.2556152344),
                vector2(872.04608154296, -1155.3488769532),
                vector2(872.05163574218, -1139.1412353516),
                vector2(857.6060180664, -1139.501953125)
            },
            ['minZ'] = 22.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 5.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop',                          -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 477,                                        -- Blip sprite
        ['blipColor'] = 2,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16),             -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['FinanceZone'] = vector3(900.46, -1154.86, 25.16),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler',                         -- Default display vehicle
                chosenVehicle = 'hauler',                          -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
}
