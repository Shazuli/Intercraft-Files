local sound = require("component").sound

sound.setWave(1, sound.modes.sine)
sound.setFrequency(1, 440)
sound.open(1)
sound.delay(1000)
sound.close(1)
sound.process()