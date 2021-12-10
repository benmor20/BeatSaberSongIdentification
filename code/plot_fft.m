function plot_fft(transform, graph_name)
    N = length(transform);
    freq = linspace(0, pi-pi/N, N) + pi/2/N*mod(N,2);
    plot(freq, abs(transform));
    title(graph_name)
    ylim([0, 500])
    xlim([0, pi])
end