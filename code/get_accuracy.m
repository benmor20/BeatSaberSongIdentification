function percentage = get_accuracy(fft_data, bpm)
% Cut first few data points
start = 20;
amp = max(fft_data(start:end));

% Get the amplitude at the BPM
bpm_index = round(bpm / 60 * length(fft_data) / 10);
bpm_amp = abs(fft_data(bpm_index));

% Grade is BPM amplitude over best amplitude (as a percentage)
percentage = bpm_amp / abs(amp) * 100;
end

