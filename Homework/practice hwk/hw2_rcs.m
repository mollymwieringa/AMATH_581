%% load data

% create big data matrix
A = []; dim1 = 80; dim2 = 70; % dimensions of pictures
ct = 1;
for ind = 1:39
    folder = ['CroppedYale/yaleB' num2str(ind,'%02.f')];
    D = folder;
    addpath(genpath(D));
    S = dir(D);

    for k = 1:numel(S)
        F = S(k).name;
        if length(F)>3
            I = imread(F);
            dat = imresize(I,[dim1 dim2]);
            A(ct,:) = dat(:); % save data.
            ct = ct+1;
        end
    end
end

%% compute SVD
N = size(A,1);
[U,S,V] = svd(A,0); 
% U = principal directions (left singular vectors)
% E = how those project onto eigendirections (singular values)
% V = right singular vectors

%Phi = U(:,1:2*N); Phi(:,1) = -1*Phi(:,1); % reshaped U

figure()
ct = 1;
for i = 1:3
    for j = 1:3
        subplot(3,3,ct)
        imshow(uint8(25000*reshape(Phi(:,ct),dim1,dim2)));
        ct = ct+1;
    end
end

%%
N = numel(S)-3;
% create data matrix
dim1 = 200; dim2 = 175; % dimensions of pictures
A = zeros(N,dim1*dim2);


n = 1;
for k = 3:numel(S)
    dat = imresize(S(k).data,[dim1 dim2]);
    A(n,:) = dat(:);
    n = n+1;
end



%% for uncropped
for k = 3:numel(S)
    F = S(k).name;
    I = imread(F);
    imshow(I)
    S(k).data = I; % optional, save data.
end

N = numel(S)-3;
% create data matrix
dim1 = 200; dim2 = 175; % dimensions of pictures
A = zeros(N,dim1*dim2);

n = 1;
for k = 3:numel(S)
    dat = imresize(S(k).data,[dim1 dim2]);
    A(n,:) = dat(:);
    n = n+1;
end

