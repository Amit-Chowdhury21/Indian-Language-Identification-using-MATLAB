# Indian-Language-Identification-using-MATLAB

As per research work published in Journal of Experimental and Theoretical Artificial Intelligence, 2020, Vol.32. Amit A. Chowdhury, Vaibhav S. Borkar and Gajanan K. Birajdar, "Indian Language Identification using time-frequency based texture descriptors and GWO-based feature selection".
Link: https://www.tandfonline.com/doi/full/10.1080/0952813X.2019.1631392

In Main code, an audio file from Indic TTS database is used to compute a spectrogram image and then extract the features from it. Here we have extracted the features using three texture descriptors: CLBP (Complete Linear Binary Pattern), LBPHF (Linear Binary Pattern Histogram Fourier) and Wavelet. In main code, functions of each feature extractors are called and executed. In MATLAB Workspace, feature matrix of each texture descriptors file will be seen. Size of CLBP: N x 118, Size of LBPHF: N X 76, Size of Wavelet: N x 9, where N is the total number of audio files present in the given folder. Then all different feature matrices of CLBP, LBPHF and Wavelet are combined into single matrix of size N x 203. 

In next step, the combined feature set is passed through a feature selection algorithm which is Grey Wolf Optimizer, "Seyedali Mirjalili, Seyed Mohammad Mirjalili & Andrew Lewis", Advances in Engineering Software Vol. 69, March 2014, Pages 46-61. GWO helps to point out the important and valuable features which helps to classification as some irrelevent and redundant features contributes to a wrong decision. Hence these features are removed and an optimal feature set is selected from the extracted features. It is a process of selecting a significant subset of features to create a more accurate model. And finally, these selected features are used to train the neural network classifier. A feed-forward neural network as a classification model is employed to observe some hidden pattern in the feature matrices which will help us to recognise the languages of the unknown samples. Using Indic-TTS database 96.9659% accuracy was obtained.
