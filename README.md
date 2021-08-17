# PnCP 
## A MATLAB package for quantum entanglement detection and constructing positive maps which are not completely positive. 

 
To learn about what PnCP does and to see some performance standards, please read - https://arxiv.org/abs/2001.01181   
If you use PnCP, please cite the above article for its use.  
PnCP has been tested on Ubuntu and MacOS. 

## Dependencies
- [MOSEK](https://www.mosek.com/) or [SeDuMi](https://sedumi.ie.lehigh.edu/)
- [YALMIP (2019 April)](https://yalmip.github.io/R20190425) 

## Usage
To use PnCP, add the entire matlab archive to path. The 'demo.m' file demonstrates the two main commands. 
### Generating a positive map which is not completely positive. 
To generate a (rational) positive map <img src="https://render.githubusercontent.com/render/math?math=Phi:\mathbb{R}^{3}\mapsto\mathbb{R}^{3}"> use the ``Gen_PnCP`` command, e.g.,
```
Phi = Gen_PnCP(3,3,'mosek','CNR',2,2,rationalize=1);
```


## Licensing 
PnCP is released under the conditions of the [GNU General Public License 3.0](https://www.gnu.org/licenses/gpl-3.0.html)

## Contact
Abhishek Bhardwaj : Abhishek 'dot' Bhardwaj 'dot' Maths 'at' gmail 'dot' com
