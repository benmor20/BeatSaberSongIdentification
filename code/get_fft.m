function transform = get_fft(filename, min, max)
    load("data/" + filename + ".mat")
    accel = sqrt(Acceleration.X .^ 2 + Acceleration.Y .^ 2 + Acceleration.Z .^ 2) - 9.8;
    accel = accel(min:max);
    trans = fftshift(fft(accel));
    mid = floor(length(trans) / 2);
    transform = trans(mid:end);
end
