in_thread do
  use_synth :hollow
  live_loop :foo do
    play :D4, attack: 6, release: 6, amp: 2
    sleep(8)
  end
  sleep(8)
  live_loop :haunted do
    cue :tick
    sample :ambi_haunted_hum, attack: rrand(0.5, 1.5), release: rrand(0.5, 1.5)
    sleep rrand(0.1, 2)
    sample :perc_bell, rate: rrand(-1.5, 1.5)
    sleep rrand(1, 2)
  end
  sleep(6)
  use_synth :dark_ambience
  play rrand(50, 70), amp: 2
  sleep(6)
  play rrand(50, 70), rate: rrand(-1.5, -0.5), amp: rrand(3, 5)
  sleep(6)
  2.times do
    sync :tick
    play rrand(50, 70), amp: 2
    sleep(0.5)
    play rrand(50, 70), rate: rrand(-1.5, -0.5), amp: rrand(3, 5)
    sleep(2)
    play rrand(50, 70), amp: 2
    sleep(0.5)
    play rrand(50, 70), rate: rrand(-1.5, -0.5), amp: rrand(3, 5)
  end
  live_loop :bar do
    play rrand(50, 70), amp: 2
    sleep(0.5)
    play rrand(50, 70), rate: rrand(-1.5, -0.5), amp: rrand(3, 5)
    sleep(0.5)
  end
end



