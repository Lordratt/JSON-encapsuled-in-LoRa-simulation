
message = '{"id":"1","mmHg":"12080","BPM":"77.52"}'; 
Bandwidth = 125e3; % Bandwidth in Hz
SF = 12; % Spreading Factor
Pt = 14 ; % Transmit Power in dB
Fs = 1e6; % Sampling Frequency in Hz
df = 0; % Frequency Offset in Hz

%  parameters
CR = 1; % Coding Rate
n_preamble = 8; % Number of symbols in preamble
SyncKey = 1; % Sync key

% Call the LoRa_Tx function
[signal_mod] = LoRa_Tx(message, Bandwidth, SF, Pt, Fs, df, CR, n_preamble, SyncKey);



% Plot the spectrogram
figure;
window = 500; % Window size for spectrogram
noverlap = 128; % Number of overlapping samples
nfft = 20000; % Number of FFT points
spectrogram(signal_mod, window, noverlap, nfft, Fs, 'yaxis','centered');
title('LoRa Spectrogram Visualization ');
xlabel('time(s)');
ylabel('frequency(Hz)');
colorbar;
