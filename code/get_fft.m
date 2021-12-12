function transform = get_fft(filename, min, max)
    load("data/" + filename + ".mat")
    
    % Total magnitude of acceleration, cut out either end
    accel = sqrt(Acceleration.X .^ 2 + Acceleration.Y .^ 2 + Acceleration.Z .^ 2) - 9.8;
    accel = accel(min:max);
    
    % Get FFT, shifted, and only positive values (since they are symmetric)
    trans = fftshift(fft(accel));
    mid = floor(length(trans) / 2);
    transform = trans(mid:end);
end
