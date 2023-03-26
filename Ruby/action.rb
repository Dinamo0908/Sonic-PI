4.times do
  sample :drum_bass_hard
  sleep(0.5)
end

sample :bass_hard_c
sleep 2

live_loop :action do
  sample :bass_dnb_f, amp: 2
  sample :loop_amen
  sample :drum_splash_soft
  b = sample :bass_voxy_c
  control b, cutoff: rrand(40, 120), cutoff_slide: rrand(1, 4), attack: 1, release: rrand(1.5, 2), amp: rrand(0.5, 1)
  sleep 1.75
end
