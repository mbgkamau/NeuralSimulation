nUnits = 20;nTrainPat = [5, 10, 15];Ntrials = 10;err = zeros(Ntrials, 1);for a = 1: length(nTrainPat)    pattern = nTrainPat(a);       for x = 1:Ntrials        % Generate random patterns.        P = double(0.5 > rand(5,nUnits));                % Memorize.        autoConnectivity;                % Recall.        j = 1;        yInitial = 0.6*P(j,:)'; % Weak memory.        Y = AsynchUp (yInitial, HP, 100);        % How many errors are there?        val = sum(abs(P(j,:)-Y(11,:)));                err(x) = val;           endfor        subplot(3,1, a);    hist(err, 50, 1);    legend(num2str(pattern))    endfor           