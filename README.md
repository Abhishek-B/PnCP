# PnCP

This MATLAB package is built for quantum entanglement detection and constructing positive maps which are not completely positive.  

## Dependencies
- [MOSEK](https://www.mosek.com/) or [SeDuMi](https://sedumi.ie.lehigh.edu/)
- [YALMIP (2019 April release)](https://yalmip.github.io/R20190425) 

PnCP has been tested on Ubuntu and MacOS. 


## Usage
To use PnCP, add the entire matlab archive to path. The 'demo.m' file demonstrates the two main commands. 
### Generating a positive map which is not completely positive (pncp map). 
To generate a (rational) positive map <img src="https://render.githubusercontent.com/render/math?math=\Phi:\mathbb{R}^{3\times 3}\mapsto\mathbb{R}^{3\times 3}"> use the ``Gen_PnCP`` command, e.g.,
```
Phi = Gen_PnCP(3,3,'mosek','CNR',2,2,rationalize=1);
```
Details for the input arguments can be learnt using
```
help('Gen_PnCP')
```
### Testing Entanglement of a Quantum State
Given a quantum state <img src="https://render.githubusercontent.com/render/math?math=\rho"> along with its density matrix <img src="https://render.githubusercontent.com/render/math?math=P">, to generate a rational pncp map which can detect the entanglement of <img src="https://render.githubusercontent.com/render/math?math=\rho">, use the command ``Ent_PnCP``, e.g.
```
output = Ent_PnCP(M,N,m,P,attempts);
Phi = output{1,1};
ampliation = output{1,2};
```
where <img src="https://render.githubusercontent.com/render/math?math=M, N"> are the dimensions of the composite systems for <img src="https://render.githubusercontent.com/render/math?math=\rho">, <img src="https://render.githubusercontent.com/render/math?math=m"> is the dimension of the codomain of the desired <img src="https://render.githubusercontent.com/render/math?math=\Phi"> and ``attemps`` is the number of trials to conduct.  
Details for the input arguments can be learnt using
```
help('Ent_PnCP')
```
If only a floating point map <img src="https://render.githubusercontent.com/render/math?math=\Phi"> is required, there is a similar command ``EntF_PnCP``.

## Licensing 
PnCP is released under the conditions of the [GNU General Public License 3.0](https://www.gnu.org/licenses/gpl-3.0.html)

## References
Performance standards, examples and details of PnCP can be found in the article 
[1] [Practical construction of positive maps which are not completely positive](https://arxiv.org/abs/2001.01181).
If you use PnCP, please cite the above article for its use.  

The construction used in PnCP is from the article
[2] [There are many more positive maps than completely positive maps](https://academic.oup.com/imrn/article/2019/11/3313/4210362?login=true).

## Contact
Abhishek Bhardwaj : Abhishek 'dot' Bhardwaj 'dot' Maths 'at' gmail 'dot' com
