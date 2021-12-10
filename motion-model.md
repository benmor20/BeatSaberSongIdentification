# Motion Model

Our motion model focuses on the acceleration of the left hand. This was chosen for two reasons: first, it was easiest, as all participants in data collection were righties, non-dominant hand was easiest. Second, the left hand often plays the beat of the song, so it would be more accurate for any beat per minute detections.

By taping a phone to our wrist, we tracked six variables using Matlab Mobile:

- Acceleration (X, Y, Z), in m/s^2
- Angular Velocity (around X, Y, and Z), in rad/s

Although we only ended up using acceleration. For simplicity, and to minimize axes of freedom, we took the overall magnitude of the acceleration, so we only needed to analyze a single variable.

# Proof of Concept

Since we decided to focus on Normal difficulty, we only really had 2 motions: a swing down, and a swing to the side. Since the blocks are tied to the beat of the music, we would expect to see spikes in frequency at the BPM of the song, along with multiples and fractions thereof. As a proof of concept, we first plotted the FFT of our acceleration data to see if there were spikes at the BPM. There are:

<Insert graph with xlines at the BPM>

This is true for most runs of most songs:

<Graphs of some of the other songs>

Additionally, we can see that each song has a qualitatively different shape to it, so it would be theoretically possible to create some sort of classification algorithm to identify the song.
