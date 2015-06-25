# Coded by Sam Aaron

use_synth :tb303
use_bpm 45
use_random_seed 3

with_fx :reverb do
  live_loop :echoes do
    with_fx(:echo, delay: 0.5, decay: 4) do
      play chord([:b1, :b2, :e1, :e2, :b3, :e3].choose, :minor).choose, cutoff: rrand(40, 100), amp: 0.5, attack: 0, release: 2, cutoff_max: 110
      sleep [0.25, 0.5, 0.5, 0.5, 1, 1].choose
    end
  end
end
