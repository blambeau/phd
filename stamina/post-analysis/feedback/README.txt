You'll find scoring data about your algorithm in the .csv file attached. The two plots allows you to quickly compare the performance of your algorithm with the baseline. Those plots, that report a measure of model accuracy (BCR score) against the sample sparsity, have been built from the .csv file by averaging scores over the 5 problems that each cell contains. Reported scores for your algorithm are restricted to cells for which you submitted at least one entry and the average is computed over the number of problems you actually tackle in a given cell.

The .csv file contains one line for each problem for which you've at least one submission; only the best one has been kept. Feel free to ask us for a larger file with all your submission data.

* problem           Identifier of the problem instance (1..100)
* algorithm         Name of your algorithm
* alphabet_size     Size of the alphabet (2, 5, 10, 20, 50)
* sample_sparsity   Sparsity of the sample (1.0, 0.5, 0.25, 0.125)
* sensitivity       How well are true positives classified as such?
* specificity       How well are true negatives classified as such?
* score             Score obtained with your submission (Harmonic BCR) 
* baseline_score    Score obtained by the baseline (Blue-Fringe aka redblue)
* ranking           Submission ranking on this problem, among all participants
* progress          Is the submission score better than the baseline?
* broken            Is the problem considered broken (BCR >= 0.99)

We *strongly* invite you to complete your grid -- by running your algorithm on problems you didn't consider so far and submitting online (the oracle is still available) --, especially if your algorithm performs significantly better than the baseline. If easier for you, feel free to send me an email containing an archive with binary sequences for specific problems. 

Feel free to send an email to stamina@listes.uclouvain.be, with any question or request you have about this post-competition analysis phase.

For the Stamina organizers,
Bernard Lambeau
bernard.lambeau@uclouvain.be
