unitDef = {
  unitname               = [[subraider]],
  name                   = [[Snake]],
  description            = [[Submarine]],
  acceleration           = 0.05,
  activateWhenBuilt      = true,
  brakeRate              = 0.2,
  buildCostEnergy        = 350,
  buildCostMetal         = 350,
  builder                = false,
  buildPic               = [[CORSUB.png]],
  buildTime              = 350,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = true,
  category               = [[SUB FIREPROOF]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[28 20 89]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Sous-Marin]],
	description_de = [[Unterseeboot]],
	description_pl = [[Lodz podwodna]],
    fireproof      = [[1]],
    helptext       = [[Expensive, stealthy, and fragile, this Submarine can quickly sink anything it can hit. The Submarine cannot shoot behind itself, and its turn rate is poor, so positioning is key. Watch out for anything with anti-sub weaponry, especially Hunters.]],
    helptext_fr    = [[Le Snake est discret, cher et fragile, mais il peut couler trcs rapidement la plupart de ses ennemis. De plus il peut torpiller r de grande distance. Ne pouvant tirer derricre lui et tournant rapidement, son positionnement initial est la clef de l'éfficacité.]],
	helptext_de    = [[Teuer, versteckt und gebrechlich ist dieses U-Boot. Es kann nicht nach hinten schießen und seine Ausrichtung dauert lange. Daher lieber gleich richtig positionieren. Achte auf alles mit Anti-U-Boot Ausrüstung, besonders 'Hunter' - Torpedofregatten.]],
	helptext_pl    = [[Lodzie powolne, mimo ze sa drogie i delikatne, zadaja duze obrazenia i moga zostac wykryte tylko przez sonar. Wyrzutnie torped maja zamontowane tylko z przodu, zatem odpowienie ustawienie jest kluczem w bitwach, w ktorych uczestnicza. Torpedy to glowna kategoria broni, ktora moze atakowac lodzie podwodne, zatem nalezy ich unikac - szczegolnie fregat torpedowych.]],
	modelradius    = [[15]],
  },

  explodeAs              = [[SMALL_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[submarine]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  mass                   = 240,
  maxDamage              = 875,
  maxVelocity            = 3,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  modelCenterOffset      = [[0 0 -4]],
  movementClass          = [[UBOAT3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP HOVER]],
  objectName             = [[sub.s3o]],
  script                 = [[corsub.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[SMALL_UNITEX]],
  side                   = [[CORE]],
  sightDistance          = 396,
  sonarDistance          = 396,
  turninplace            = 0,
  turnRate               = 200,
  upright                = true,
  waterline              = 20,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[FAKEWEAPON]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 30,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },


    {
      def                = [[TORPEDO]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 270,
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs             = {

    TORPEDO = {
      name                    = [[Torpedo]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      canAttackGround		  = false,	-- workaround for range hax
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 420,
        subs    = 420,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      flightTime              = 6,
      groundbounce            = 1,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_t_longbolt.s3o]],
	  numbounce               = 4,
      noSelfDamage            = true,
      range                   = 360,
      reloadtime              = 4.5,
      soundHit                = [[explosion/wet/ex_underwater]],
      soundStart              = [[weapon/torpedo]],
      startVelocity           = 80,
      tolerance               = 32767,
      tracks                  = true,
      turnRate                = 32000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 30,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 180,
    },


    FAKEWEAPON  = {
      name                    = [[Fake Torpedo - Points me in the right direction]],
      areaOfEffect            = 16,
      avoidFriendly           = false,
      burnblow                = true,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0.1,
        planes  = 0.1,
        subs    = 0.1,
      },

      explosionGenerator      = [[custom:TORPEDO_HIT]],
      fixedLauncher           = true,
      flightTime              = 6,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptedByShieldType = 0,
      lineOfSight             = true,
      model                   = [[wep_t_longbolt.s3o]],
      propeller               = true,
      range                   = 320,
      reloadtime              = 1,
      renderType              = 1,
      startVelocity           = 90,
      tolerance               = 10000,
      tracks                  = true,
      turnRate                = 10000,
      turret                  = true,
      waterWeapon             = true,
      weaponAcceleration      = 25,
      weaponType              = [[TorpedoLauncher]],
      weaponVelocity          = 140,
    },

  },


  featureDefs            = {

    DEAD = {
      description      = [[Wreckage - Snake]],
      blocking         = false,
      category         = [[corpses]],
      damage           = 800,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 4,
      footprintZ       = 4,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 140,
      object           = [[sub_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 140,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP = {
      description      = [[Debris - Snake]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 800,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      hitdensity       = [[100]],
      metal            = 70,
      object           = [[debris4x4c.s3o]],
      reclaimable      = true,
      reclaimTime      = 70,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ subraider = unitDef })
