local group_vcf = Group {
  name = "VCF",
  Parameter {
    id = "vcf_cutoff_parameter",
    name = "Cutoff",
    type = "cc",
    number = 74,
    default_value = 63
  },
  Parameter {
    id = "vcf_type_parameter",
    name = "Type",
    type = "cc",
    number = 59,
    items = {"24dB LPF", "18dB LPF", "12dB LPF", "BPF", "HPF", "BEF"},
  },
  Parameter {
    id = "vcf_resonance_parameter",
    name = "Resonance",
    type = "cc",
    number = 71,
    default_value = 0
  },
  Parameter {
    id = "vcf_eg_depth_parameter",
    name = "FEG Depth",
    type = "cc",
    number = 81,
    default_value = 63
  } 
}

local group_distortion = Group {
  name = "Distortion",
  Parameter {
    id = "distortion_parameter",
    name = "Distortion",
    type = "cc",
    number = 49,
    items = {"Off","On"}
  }
}

local group_effect = Group {
  name = "Effect",
  Parameter {
    id = "effect_type_a_parameter",
    name = "Type A",
    type = "cc",
    number = 88,
    items = {"Delay", "Flanger", "Phaser", "OD+Amp"}
  },
  Parameter {
    -- This is actually the subtype param for the FX type. Why, Yamaha, Why? 
    id = "effect_type_b_parameter",
    name = "Type B",
    type = "cc",
    number = 89
  },
  Parameter {
    id = "effect_param_parameter",
    name = "Param",
    type = "cc",
    number = 48
  },
  Parameter {
    id = "effect_send_parameter",
    name = "Wet / Send",
    type = "cc",
    number = 94
  }
}

local group_mixer = Group {
  name = "Mixer",
  Parameter {
    id = "mixer_pan_parameter",
    name = "Pan",
    type = "cc",
    number = 10,
    default_value = 63
  },
  Parameter {
    id = "mixer_volume_parameter",
    name = "Volume",
    type = "cc",
    number = 7,
    default_value = 127
  }
}

local group_misc = Group {
  name = "Misc",
  Parameter {
    id = "harmonic_mod1_parameter",
    name = "Harmonic 1",
    type = "cc",
    number = 20
  },
  Parameter {
    id = "harmonic_mod2_parameter",
    name = "Harmonic 2",
    type = "cc",
    number = 21
  },
  Parameter {
    id = "harmonic_mod3_parameter",
    name = "Harmonic 3",
    type = "cc",
    number = 22
  },
  Parameter {
    id = "fm_depth1_parameter",
    name = "FM Depth 1",
    type = "cc",
    number = 23
  },
  Parameter {
    id = "fm_depth2_parameter",
    name = "FM Depth 2",
    type = "cc",
    number = 24
  },
  Parameter {
    id = "fm_depth3_parameter",
    name = "FM Depth 3",
    type = "cc",
    number = 25
  },
  Parameter {
    id = "fm_decay1_parameter",
    name = "FM Decay 1",
    type = "cc",
    number = 26
  },
  Parameter {
    id = "fm_decay2_parameter",
    name = "FM Decay 2",
    type = "cc",
    number = 27
  },
  Parameter {
    id = "fm_decay3_parameter",
    name = "FM Decay 3",
    type = "cc",
    number = 28
  },
  Parameter {
    id = "noise_level_parameter",
    name = "Noise Level",
    type = "cc",
    number = 39
  }
}

return SynthDefinition {
  name = "Yamaha DX-200 v0.01",
  author = "ObscureRobot [obscurerobot@gmail.com]",
  Section {
    group_vcf,
    group_distortion,
    group_effect,
    group_mixer,
    group_misc
  }
}
