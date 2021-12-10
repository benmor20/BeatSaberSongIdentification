# BPM Classification

## Algorithm

After visually identifying the BPM from the FFT plot, we wanted to see if we could extract it. To do this, we took the four highest spikes, and filtered them down to be only the ones with BPMs between 100 and 200. For songs with lower BPMs, we are relying on the general principle that there will be a spike at both the BPM and multiples of it (i.e. if the BPM is 80 there should be a spike at 160 that we can catch). Therefore, this should cover all BPMs above 50.

From here, we try to see which one matches the BPM the most. Here, we again rely on the multiple principle, and check the spikes at ½ and 2 times the detected bpm. The frequency which has the highest amplitude at these two values is our guess at the BPM.

## Results

We collected data for six songs: Beat Saber, Lvl Insane, Turn Me On, Counting Stars, Sugar, and Sweet Escape. The first three hover at around 160 BPM, while the second three are at around 120 BPM. Since the DFT does not calculate each frequency, we had to check if the frequency was within a certain range. Here, we chose within 5 BPM of the target. The results of this algorithm are summarized in the table below.

| Song | Accuracy |
| ----------- | ----------- |
| Beat Saber | 32% |
| Lvl Insane | 64% |
| Turn Me On | 32% |
| Counting Stars | 30% |
| Sugar | 0% |
| Sweet Escape | 90% |

This culminates in an overall accuracy of about 42%*. This result is decent given the range of possible BPMs our algorithm could return, but not amazing. Sugar especially needs work; although our algorithm does tend to choose the BPM as one of the values it looks at (i.e. the BPM is one of the highest points in the FFT plot), it ends up choosing a different value each time. For next steps with this algorithm, we would delve more in depth as to why this is and possible ways to improve.

* Note that due to the length of Counting Stars, Sugar, and Sweet Escape, we only have about half as much data for them. The accuracies are weighted accordingly to get the overall accuracy
