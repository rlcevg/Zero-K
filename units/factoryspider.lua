unitDef = {
  unitname                      = [[factoryspider]],
  name                          = [[Spider Factory]],
  description                   = [[Produces Spiders, Builds at10 m/s]],
  acceleration                  = 0,
  bmcode                        = [[0]],
  brakeRate                     = 0,
  buildCostEnergy               = 600,
  buildCostMetal                = 600,
  builder                       = true,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 7,
  buildingGroundDecalSizeY      = 7,
  buildingGroundDecalType       = [[factoryspider_aoplane.dds]],

  buildoptions                  = {
    [[arm_spider]],
    [[armflea]],
    [[arm_venom]],
	[[spiderassault]],
    [[armsptk]],
    [[armcrabe]],
    [[spideraa]],
    [[armspy]],
  },

  buildPic                      = [[factoryspider.png]],
  buildTime                     = 600,
  canMove                       = true,
  canPatrol                     = true,
  canstop                       = [[1]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[100 120 110]],
  collisionVolumeTest	        = 1,
  collisionVolumeType	        = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    description_fi = [[Taktinen robottitehdas. Rakentaa erikoistuneita robotteja 6m/s nopeudella]],
	description_de = [[Produziert Spinnen, Baut mit 6 M/s]],
    helptext       = [[Optimized for rough terrain, the Spider Factory relies primarily on range and maneuverability rather than brute force. Key units: Flea, Recluse, Cudgel, Crabe]],
    helptext_fi    = [[Tuottaa pitk?lti erikoistuneita tai jalkav?kirobotteja raskaampia yksik?it?. Esimerkiksi EMP, n?kym?tt?myys ja maastokelpoisuus ovat joidenkin t?m?n tehtaan tuotoksien erikoisuuksia.]],
	helptext_de    = [[Ideal f�r unwegsames Gel�nde, liegt der Fokus der Spider Factory eher auf Einheiten mit gro�er Reichweite und Wendigkeit und weniger auf roher Gewalt. Wichtigste Einheiten: Flea, Recluse, Cudgel, Crabe]],
    sortName       = [[5]],
  },

  energyMake                    = 0.3,
  energyUse                     = 0,
  explodeAs                     = [[LARGE_BUILDINGEX]],
  footprintX                    = 6,
  footprintZ                    = 6,
  iconType                      = [[facspider]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  mass                          = 324,
  maxDamage                     = 4000,
  maxSlope                      = 15,
  maxVelocity                   = 0,
  maxWaterDepth                 = 0,
  metalMake                     = 0.3,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[factory3.s3o]],
  seismicSignature              = 4,
  selfDestructAs                = [[LARGE_BUILDINGEX]],
  showNanoSpray                 = false,
  side                          = [[ARM]],
  sightDistance                 = 273,
  smoothAnim                    = true,
  TEDClass                      = [[PLANT]],
  turnRate                      = 0,
  useBuildingGroundDecal        = true,
  workerTime                    = 10,
  yardMap                       = [[oooooo oooooo occcco occcco occcco cccccc]],

  featureDefs                   = {

    DEAD  = {
      description      = [[Wreckage -Spider Factory]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 4000,
      energy           = 0,
      featureDead      = [[DEAD2]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 6,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 240,
      object           = [[factory3_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 240,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    DEAD2 = {
      description      = [[Debris - Spider Factory]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 4000,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 240,
      object           = [[debris4x4c.s3o]],
      reclaimable      = true,
      reclaimTime      = 240,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Spider Factory]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 4000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 5,
      footprintZ       = 5,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 120,
      object           = [[debris4x4c.s3o]],
      reclaimable      = true,
      reclaimTime      = 120,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ factoryspider = unitDef })
