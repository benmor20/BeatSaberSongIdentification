# How on-beat are you?

## Algorithm

Looking at the fft, we realised that the BPM should have the highest amplitude in the frequency domain. However, we often found that this wasn’t necessarily the case. We know that the game itself bases it’s motion off of the BPM and staying on beat is important to increase the player’s score, but this does not always translate to BPM being the highest spike in frequency domain. In order to determine the percentage of time someone was off-beat, we referenced the highest amplitude as 100% and divided the amplitude at the BPM by whatever the maximum amplitude was - if the BPM was the highest spike, then the user was perfectly on beat. If the BPM was half the height of the highest spike, then the user was only 50% on beat.

![HOB Beat Saber](images/how-on-beat1.png)

## Results

For this algorithm, the inputs are the filename where the accelerometer data is saved and the actual bpm of the song. For each song, we were given a percentage which determined how close the person was to having their highest amplitude at the BPM. 

```
fft_data = get_fft(“insane6”, 100, 500);
bpm = 160;
accuracy = get_accuracy(fft_data, bpm)
```

`accuracy = 71.5`

One thing we realised was that there were often spikes at ½ BPM or at double BPM. It is possible that these could be included in determining how on-beat someone is as they are still at regular intervals. The way we thought about including this was using every point on the graph equaling 100% but quickly realised that was unrealistic due to the noise that comes along with collecting data with this particular sensor and the fact that no one is staying perfectly still causing even more noise. A possible further exploration for this project could be attempting to figure out what signals can be filtered out and expanding the algorithm to take into account multiples and fractions of the BPM.
