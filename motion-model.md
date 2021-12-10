# Motion Model

Our motion model focuses on the acceleration of the left hand. This was chosen for two reasons: first, it was easiest, as all participants in data collection were righties, non-dominant hand was easiest. Second, the left hand often plays the beat of the song, so it would be more accurate for any beat per minute detections.

By taping a phone to our wrist, we tracked six variables using Matlab Mobile:

- Acceleration (X, Y, Z), in m/s^2
- Angular Velocity (around X, Y, and Z), in rad/s

Although we only ended up using acceleration. For simplicity, and to minimize axes of freedom, we took the overall magnitude of the acceleration, so we only needed to analyze a single variable.

## Data Collection

Data collection was a major aspect of this project because of the nature of our project. We initially started with Counting Stars, Sugar, and Sweet Escape which are each roughly 4 minutes with a BPM around 120. As we worked on this we quickly realised we would need a much higher amount of data than originally planned. In order to make collecting this data more feasible, we made a few changes. We switched to shorter songs - Lvl Insane, Beat Saber, and Turn Me On, each at around 2 minutes and 160 BPM. We also decreased the difficulty level we were collecting at, which allowed us to open up a data collecting pool where we could ask others to also help us collect data. While this did add another challenge of being able to use data from multiple people, the increase in data made up for it.

Doing this resulted in data which was difficult to clean. Since we weren’t trying to get “perfect” data, there would be times where someone would mess up one block, be thrown off, and then miss a few more which would affect the data collection. Additionally, in some parts of the songs the blocks would be coming at a slow enough rate that people would move their arms in other ways while waiting, which would then also affect the data collection.

We ended up collecting 25 data points for “Beat Saber”, “Lvl Insane”, and “Turn Me On” at a normal level and 10 data points for “Counting Stars”, “Sugar”, and “Sweet Escape” at an expert level. All the expert level data was collected by one person versus the normal data was collected by 10-15 different people. This caused even more variance since every person played the game a little differently.
