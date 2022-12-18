# Indian-Language-Identification-using-MATLAB

As research work published in Journal of Experimental and Theoretical Artificial Intelligence, 2020, Vol.32. Amit A. Chowdhury, Vaibhav S. Borkar and Gajanan K. Birajdar, "Indian Language Identification using time-frequency based texture descriptors and GWO-based feature selection".
Link: https://www.tandfonline.com/doi/full/10.1080/0952813X.2019.1631392

In Main code, an audio file from Indic TTS database is used to compute a spectrogram image and then extract the features from it. Here we have extracted the features using three texture descriptors: CLBP (Complete Linear Binary Pattern), LBPHF (Linear Binary Pattern Histogram Fourier) and Wavelet. In main code, functions of each feature extractors are called and executed. In MATLAB Workspace, feature matrix of each texture descriptors file will be seen. Size of CLBP: N x 118, Size of LBPHF: N X 76, Size of Wavelet: N x 9, where N is the total number of audio files present in the given folder. 
