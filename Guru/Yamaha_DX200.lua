-- Version 0.01
-- Obscure Robot / obscurerobot@gmail.com

local group_scene = Group {
  name = "Scene",
  Parameter {
    id = "scene_parameter",
    name = "Scene",
    type = "cc",
    number = 3,
  }
}

local group_lfo = Group {
  name = "LFO",
  Parameter {
    id = "lfo_wave_parameter",
    name = "Wave",
    type = "cc",
    number = 15,
    items = {"Tri", "Saw", "Sqr", "Sine", "S&H"}
  },
  Parameter {
    id = "lfo_pmd_parameter",
    name = "Pitch Mod",
    type = "cc",
    number = 18
  },
  Parameter {
    id = "lfo_fmd_parameter",
    name = "Filter Mod",
    type = "cc",
    number = 19
  },
  Parameter {
    id = "lfo_amd_parameter",
    name = "Amp Mod",
    type = "cc",
    number = 80
  },
  Parameter {
    id = "lfo_speed_parameter",
    name = "Speed",
    type = "cc",
    number = 16,
  }
}

local group_aeg = Group {
  name = "AEG",
  Parameter {
    id = "aeg_attack_parameter",
    name = "Attack",
    type = "cc",
    number = 73,
  },
  Parameter {
    id = "aeg_decay_parameter",
    name = "Decay",
    type = "cc",
    number = 75,
  },
  Parameter {
    id = "aeg_sustain_parameter",
    name = "Sustain",
    type = "cc",
    number = 31,
  },
  Parameter {
    id = "aeg_release_parameter",
    name = "Release",
    type = "cc",
    number = 72,
  },
}

local group_feg = Group {
  name = "FEG",
  Parameter {
    id = "feg_attack_parameter",
    name = "Attack",
    type = "cc",
    number = 82,
  },
  Parameter {
    id = "feg_decay_parameter",
    name = "Decay",
    type = "cc",
    number = 83,
  },
  Parameter {
    id = "feg_sustain_parameter",
    name = "Sustain",
    type = "cc",
    number = 28,
  },
  Parameter {
    id = "feg_release_parameter",
    name = "Release",
    type = "cc",
    number = 29,
  }
}

local group_common = Group {
  name = "Common",
  Parameter {
    id = "common_key_a_parameter",
    name = "Key Assign A",
    type = "cc",
    number = 8,
  },
  Parameter {
    id = "common_key_b_parameter",
    name = "Key Assign B",
    type = "cc",
    number = 9,
  },
  Parameter {
    id = "common_portamento_parameter",
    name = "Portamento",
    type = "cc",
    number = 5,
  },
}

local group_algorithm = Group {
  name = "Algorithm",
  Parameter {
    id = "algorithm_parameter",
    name = "Algorithm",
    type = "cc",
    number = 33,
    default_value = 25,
    max_value = 31
  }
}

local group_noise_osc = Group {
  name = "Noise",
  Parameter {
    id = "noise_type_parameter",
    name = "Type",
    type = "cc",
    number = 51
  }
}

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
    items = {"24dB", "18dB", "12dB", "BPF", "HPF", "BEF"},
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

local group_dx200_sysex = Group {
  name = "DX200",
  -- sysex_message_template = {0xf0, 0x43, 0x17, 0x62, hh, mm, ll, "vv", 0xf7},
  sysex_message_template = {0xf0, 0x43, 0x17, 0x62, 0x10, 0x00, "nn", "vv", 0xf7},
  Parameter {
    id = "sysex_distortion_parameter",
    name = "Distortion",
    type = "sysex",
    number = 0x00,
    items = {"Off","On"}
  }
}

-- DX7:
-- sysex_message_template = {0xf0, 0x43, 0x11, 0xgg, 0xpp, 0xvv, 0xf7},

local group_dx7_op6 = Group {
  name = "DX7",
  sysex_message_template = {0xf0, 0x43, 0x11, 0x00, "nn", "vv", 0xf7},
  Parameter {
    id = "dx7_op6_eg_rate1_parameter",
    name = "EG Rate 1",
    type = "sysex",
    number = 0x00,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_rate2_parameter",
    name = "EG Rate 2",
    type = "sysex",
    number = 0x01,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_rate3_parameter",
    name = "EG Rate 3",
    type = "sysex",
    number = 0x02,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_rate4_parameter",
    name = "EG Rate 4",
    type = "sysex",
    number = 0x03,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_level1_parameter",
    name = "EG Level 1",
    type = "sysex",
    number = 0x04,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_level2_parameter",
    name = "EG Level 2",
    type = "sysex",
    number = 0x05,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_level3_parameter",
    name = "EG Level 3",
    type = "sysex",
    number = 0x06,
    max_value = 99,
    default_value = 63
  },
  Parameter {
    id = "dx7_op6_eg_level4_parameter",
    name = "EG Level 4",
    type = "sysex",
    number = 0x07,
    max_value = 99,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_break_point_parameter",
    name = "Break Point",
    type = "sysex",
    number = 0x08,
    max_value = 99,
    default_value = 27
  },
  Parameter {
    id = "dx7_op6_left_depth_parameter",
    name = "Left Depth",
    type = "sysex",
    number = 0x09,
    max_value = 99,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_right_depth_parameter",
    name = "Right Depth",
    type = "sysex",
    number = 0x0A,
    max_value = 99,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_left_curve_parameter",
    name = "Left Curve",
    type = "sysex",
    number = 0x0B,
    items = {"-lin", "-exp", "+exp", "+lin"},
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_right_curve_parameter",
    name = "Right Curve",
    type = "sysex",
    number = 0x0C,
    items = {"-lin", "-exp", "+exp", "+lin"},
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_rate_scaling_parameter",
    name = "Rate Scaling",
    type = "sysex",
    number = 0x0D,
    max_value = 7,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_am_sens_parameter",
    name = "AM Sensitivity",
    type = "sysex",
    number = 0x0E,
    max_value = 3,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_touch_sens_parameter",
    name = "Touch Sensitivity",
    type = "sysex",
    number = 0x0F,
    max_value = 7,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_total_level_parameter",
    name = "Total Level",
    type = "sysex",
    number = 0x10,
    max_value = 99,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_frequency_mode_parameter",
    name = "Frequency Mode",
    type = "sysex",
    number = 0x11,
    items = {"ratio", "fixed"},
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_frequency_coarse_parameter",
    name = "Frequency Coarse",
    type = "sysex",
    number = 0x12,
    max_value = 31,
    default_value = 1
  },
  Parameter {
    id = "dx7_op6_frequency_fine_parameter",
    name = "Frequency Fine",
    type = "sysex",
    number = 0x13,
    max_value = 99,
    default_value = 0
  },
  Parameter {
    id = "dx7_op6_detune_parameter",
    name = "Detune",
    type = "sysex",
    number = 0x14,
    items = {"-7","-6","-5","-4","-3","-2","-1","0","1","2","3","4","5","6","7"},
    default_value = 8
  }
}

return SynthDefinition {
  name = "Yamaha DX-200",
  author = "ObscureRobot [obscurerobot@gmail.com]",
  content_height = 800,
  Section {
    name = "Front Panel",
    group_vcf,
    group_distortion,
    group_effect,
    group_mixer,
    group_misc,
    group_scene,
    group_lfo,
    group_aeg,
    group_feg,
    group_common,
    group_algorithm,
    group_noise_osc       
  },
  Section {
    name = "DX200 Sysex",
    group_dx200_sysex
  },
  Section {
    name = "DX7 Sysex",
    group_dx7_op6
  }
}
