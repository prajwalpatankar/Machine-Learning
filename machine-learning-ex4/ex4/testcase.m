## Copyright (C) 2020 Prajwal
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} testcase (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Prajwal <Prajwal@DESKTOP-IC712J7>
## Created: 2020-06-15

function testcase ()
  load('ex4data1.mat');
  
  num = randi(4999);
  
  mat = X(num,:);  
  
  mat1=ones(20,20);
  k=1;
  for i = 1:20
    for j = 1:20
      mat1(i,j)=mat(k);
      k++;
    endfor
  endfor
  
  mat1 = mat1';
          #for random inputs
          #mat1 = load('try2.txt');
          #mat = mat1(:)';
  imagesc(mat1), colormap gray ;

load('ex4weights.mat');
  
a1 = [1 mat];

z2 = a1 * Theta1';

a2 = sigmoid(z2);

a2 = [ones(size(a2,1),1) a2];

z3 = a2 * Theta2';

a3 = sigmoid(z3);

hofx = a3;

prediction = hofx;
  
[lol prediction] = max(hofx,[],2);

fprintf('Program paused. Press enter to continue.\n');
pause;

prediction  

endfunction
