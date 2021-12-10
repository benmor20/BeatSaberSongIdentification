function bpm = get_bpm(fft_data)
    Fs = 10;
    N = length(fft_data);
    min_hz = 0.5;
    start = ceil(min_hz * N / Fs);
    data = fft_data(start:end);

    maxes = zeros(4, 1);
    for i = 1:length(maxes)
        [d, index] = remove_max(data);
        index = index;
        data = d;
        maxes(i) = (index + start - 1) * Fs / N;
    end

    maxes = maxes * 60;
    in_range = maxes(maxes <= 200 & maxes >= 100);

    if length(in_range) == 0
        bpm = maxes(1);
    elseif length(in_range) == 1
        bpm = in_range(1);
    else
        best_bpm = 0;
        best_amp = 0;
        for i = 1:length(in_range)
            bpm = in_range(i);
            index = round(bpm / 60 * N / Fs);
            amp = abs(fft_data(floor(index / 2))) + abs(fft_data(index * 2));
            if amp > best_amp
                best_amp = amp;
                best_bpm = bpm;
            end
        end
        bpm = best_bpm;
    end

end

function [data, i] = remove_max(data)
    [m, i] = max(abs(data));
    data(i) = 0;
end
