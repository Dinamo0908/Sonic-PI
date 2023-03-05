3.times do
  sample :drum_splash_soft
  sleep(0.25)
end

sleep(1.5)

in_thread do
  live_loop :bar do
    cue :tick
    sample :drum_snare_soft
    sleep(1.5)
  end
  sleep(5)
  3.times do
    sync :tick
    play :c4
    play :e4
    sleep(1)
  end
  play :f3
  sleep(1)
  3.times do
    sync :tick
    play :f4
    play :a4
    sleep(1)
  end
  play :a4
  sleep(0.25)
  play :a5
  sleep(0.30)
  play :b4
  live_loop :amb do
    sample :ambi_sauna, attack: 4, release: 0.7, amp: 0.2
    sleep(2)
  end
  sleep(1)
  3.times do
    play :c4
    play :e4
    sleep(1)
  end
  3.times do
    play :f4
    play :a4
    sleep(1)
  end
  play :a4
  sleep(0.25)
  play :a5
  sleep(0.30)
  play :b4
  live_loop :guitars do
    sample :guit_e_fifths, attack: 4, release: 0.5, rate: 1.5, amp: 0.5
    sleep (1.5)
    sample :guit_e_fifths, attack: 4, release: 0.5, rate: 0.5, amp: 0.7
  end
  sleep(1)
  3.times do
    play :c4
    play :e4
    sleep(1)
  end
  3.times do
    play :f4
    play :a4
    sleep(1)
  end
  play :a4
  sleep(0.25)
  play :a5
  sleep(0.30)
  play :b4
end

