# Linear Regression Algorithm

## Algorithm

Once we realised that each of the songs’ fourier transforms have qualitatively different graphs, we decided to explore whether we could use those to train an algorithm which would classify the different songs. We decided to use the magnitude of total acceleration here in order to simplify the data.

For data, we decided to make this slightly more challenging by choosing three different songs with similar BPMs and lengths. To create the classification algorithm, we decided to use linear regression. Linear regression is able to give us an idea of how closely it matched with a particular song and if we were only using two songs this would have been enough. Since we decided to use a third song, we needed to be creative about the way we actually used the linear regression output.

When we ran our algorithm it would give back three numbers, each one corresponding to how close a run was to each song. We then took the maximum number and determined whether the index of the maximum matched the index of the correct song.


## Results

In order to truly determine our accuracy, we decided to add a randomizing function for our training and validation sets. We did keep the proportion of each song constant but would use different trials. Our algorithm had a fairly diverse accuracy rate but over an average of 100 runs it got an average accuracy of 42%.

While this isn’t extremely high, the accuracy ranged from 20% to over 70% so we know it’s possible to increase the accuracy. One thing we realised is that increasing the accuracy was very closely tied to increasing our data points. At the end, we had 75 runs which got divided into 60 for training and 15 for validation. If we had increased this amount significantly, we believe that it would also increase our accuracy rates, but we did not have time within the two weeks of this project.
