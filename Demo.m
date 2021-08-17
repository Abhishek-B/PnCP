%{
A short demonstration of how to use the PnCP software for its two purposes.
Ensure that PnCP and subfolders are in the path before using.
- Abhishek B.
%}

%% generating a pncp map

% define the dimensions of the problem
n=3;
m=3;

% set the solver to use with Yalmip
solver = 'mosek';

% Choose the sos relaxation for verification;
% see help('Gen_PnCP') for details on the options
relaxation = 'CNR';

% provide relaxation parameters
% see help('Gen_PnCP') for details on the options
params = [2];

% set the limit on the number of attempts at construction
attempts = 20;

% choose wether the construction should have rational coefficients;
% here we set this to false.
rationalize = 0;

% Call the function to generate the map
output = Gen_PnCP(n,m,solver, relaxation, params, attempts, rationalize);

% See if the construction was successful; in this case output will have
% positive length.
length(output)

% the data for the function is now stored in the variable 'output';
% see help('Gen_PnCP') for details of the output.
% 
% For example, the linear forms for the construction are extracted as
if length(output)>0
    h_lins = output{1,3};
    disp("The linear forms generated are:")
    disp(h_lins)
end

%% Testing Entanglement of a quantum state.

% First define the quantum state;
% Here we choose the simple example 

state = (1/3)*[1,0,0,0,1,0,0,0,1;
         0,0,0,0,0,0,0,0,0;
         0,0,0,0,0,0,0,0,0;
         0,0,0,0,0,0,0,0,0;
         1,0,0,0,1,0,0,0,1;
         0,0,0,0,0,0,0,0,0;
         0,0,0,0,0,0,0,0,0;
         0,0,0,0,0,0,0,0,0;
         1,0,0,0,1,0,0,0,1];
         
disp("The quantum state is defined as")
disp(sym(state))

% Next we define the parameters for the testing;
% the state above is in the space of dimension 3x3 = MxN;
N = 3;
M = 3;

% We choose Phi to be the map with dimensions (Phi:S^{N}->S^{m})
m = 3;

% Set the limit on the number of tests.
attempts = 2;

% Now simply call the function Ent_PnCP to test for entanglement
output = Ent_PnCP(M,N,m,state, attempts);

% Check if the test was successful and if so extract Phi and the ampliation
% (I x Phi)(state)
if length(output)>0
    Phi = output{1,1};
    ampliation = output{1,2};
    disp("The ampliation is:")
    disp(sym(ampliation))
    disp("with eigenvalues:")
    disp(eig(ampliation)')
end




























