sleep_time = rrand(0,1)
rel_rate_list = [1, 0.8, 0.7, 0.5, 0.3]
use_synth :bnoise

in_thread do
  20.times do
    with_fx :echo do
      play choose([:C3, :D4]), attack_level: 0.3, amp: 0.3, rate: 0.5, decay: 0.75
      sleep(1)
    end
  end
  sleep(8)
  2.times do
    use_synth :blade
    play :g3
    sleep(1)
    play :b3
    sleep(1)
    play :c4
    sleep(1)
  end
  live_loop :amb2 do
    sample :guit_e_fifths, attack: 4, release: 0.5, rate: 1.5, amp: 0.8
    sleep(1.5)
    sample :guit_em9, amp: 0.3
    sleep(1)
  end
  in_thread delay: 6 do
    5.times do
      with_fx :echo do
        sample :misc_crow, rate: choose(rel_rate_list), release: choose(rel_rate_list), amp: 0.3
        sleep(1)
      end
    end
  end
  3.times do
    use_synth :blade
    play :g3
    sleep(sleep_time)
    play :b3
    sleep(sleep_time)
    play :c4
    sleep(sleep_time)
  end
  3.times do
    use_synth :blade
    play :g3
    sleep(sleep_time)
    play :b3
    sleep(sleep_time)
    play :d4
    sleep(sleep_time)
  end
  2.times do
    use_synth :blade
    play :g3
    sleep(0.5)
    play :b3
    sleep(0.5)
    play :d4
    sleep(0.5)
  end
  live_loop :amb3, delay: 1.5 do
    sample :ambi_lunar_land, rate: 1.5, amp: 0.3, attack: 0.5, release: 0.7
    sleep(1)
  end
  5.times do
    use_synth :blade
    play :g3
    sleep(0.5)
    play :b3
    sleep(0.5)
    play :e4
    sleep(0.5)
  end
  play :d4
  sleep(1)
  play :e4
  sleep(1)
  2.times do
    use_synth :blade
    play :f4
    sleep(0.5)
    play :e4
    sleep(0.5)
    play :d4
    sleep(0.5)
    play :c4
    sleep(0.5)
    play :a4
    sleep(0.5)
    play :g3
    sleep(0.5)
    play :f3
    sleep(0.5)
  end
  play :g3, sustain: 1
  sleep(2)
  play :b3, sustain: 1
  sleep(2)
  play :c4, sustain: 1
end


