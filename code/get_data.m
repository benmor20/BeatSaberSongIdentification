% Gets the data for linear regression, shuffled
function [data_train, data_test, flag_train, flag_test, shuffled] = get_data(num_train, total_num)
    songs = ["beatsaber", "insane", "turn"];
    start_data = 100;
    max_data = 500;
    num_test = total_num - num_train;

    % Shuffle the order of the data. Will use the same order for the three
    % songs to try to ensure each song has the same number in training data
    % as the rest (only an issue since we don't have much data)
    shuffled = randperm(total_num);
    shuffled_train = shuffled(1:num_train);
    shuffled_test = shuffled(num_train + 1:end);
    full_train = [shuffled_train, shuffled_train + total_num, shuffled_train + total_num * 2];
    full_test = [shuffled_test, shuffled_test + total_num, shuffled_test + total_num * 2];
    data = zeros((max_data - start_data) / 2 + 2, total_num * 3);

    % Load data in shuffled order
    index = 1;
    for song = songs
        for num = 1:total_num
            trans = get_fft(song + num, start_data, max_data);
            data(:, index) = trans;
            index = index + 1;
        end 
    end

    % Split data up
    data_train = data(:, full_train);
    data_test = data(:, full_test);
    flag_train = [repmat([1, 0, 0], num_train, 1); repmat([0, 1, 0], num_train, 1); repmat([0, 0, 1], num_train, 1)];
    flag_test = [repmat([1, 0, 0], num_test, 1); repmat([0, 1, 0], num_test, 1); repmat([0, 0, 1], num_test, 1)];
end

