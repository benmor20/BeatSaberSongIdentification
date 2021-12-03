# Identifying Beat Saber Songs
## Shree Madan and Ben Morris

### Abstract
For our final project, we decided we wanted to explore the ways we could identify songs from the game Beat Saber using frequency analysis. Best Saber is a VR rhythm game which uses two sabers to cut through blocks to the beat of the music in a specific pattern. We decided to focus on three songs and use discrete time fourier transforms to create an algorithm which would be able to identify which song was being played. One aspect of Beat Saber and VR in general is that only the person wearing the headset is able to see the screen, our goal is to aid in the identification of songs for people who are watching the game. 

### Methods
To identify songs, we take accelerometer data of the motion of the player’s non-dominant arm. We can then calculate the Fourier transform of this acceleration, and use that to train a linear regression classification algorithm to identify the song. Alternatively, we can use an eigenvalue classification algorithm instead. We will take a few runs of each song and split it into training and validation data. We aim to have a goal of 70% accuracy on the validation data. After finishing this, we plan to do a sliding window analysis by taking small samples of the acceleration data, extracting the peak frequency, and “sliding” the time window over the full song. This may provide a more robust method of identification.

### Learning Goals
Our learning goals for the project include a more in-depth understanding of Fourier transforms and how to best work with them. Additionally, we hope to be able to build our own classification algorithm. This project supports this directly as our algorithm intends to take accelerometer data and convert it with an fft. In order to do this we will need to look at different forms of fourier transforms such as discrete time fourier transforms as well as re-study and learn more about classification methods such as linear regression and eigenvectors. We aren’t sure what would be the most effective classification method so we are planning to learn about a few different methods which will give us a more in-depth understanding. Another goal for us was to have a better scope for our project. Previously, we have both over-scoped projects and it has caused us to have minimal time to write our explanations of our projects. For this project, we are specifically trying to scope our project to leave us plenty of time to work on our website so that we are able to better explain our work.

### Timeline
11/30 → Finish proposal

12/3 → Finish data collection

12/7 → Work on website

12/7 → Feedback from profs on website

12/10 → Final touches

12/13 → In-class pitch and presentation
