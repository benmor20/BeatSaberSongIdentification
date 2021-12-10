function percentage = get_accuracy(fft_data, bpm)
start = 20;
amp = max(fft_data(start:end));

bpm_index = round(bpm / 60 * length(fft_data) / 10);
bpm_amp = abs(fft_data(bpm_index));

percentage = bpm_amp / abs(amp) * 100;
end

