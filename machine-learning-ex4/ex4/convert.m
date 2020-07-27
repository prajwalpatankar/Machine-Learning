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
## @deftypefn {} {@var{retval} =} convert (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Prajwal <Prajwal@DESKTOP-IC712J7>
## Created: 2020-06-15

function mat1 = convert (mat)
  
  
  mat1=zeros(20,20);
  k=1;
  for i = 1:20
    for j = 1:20
      mat1(i,j)=mat(k);
      k++;
    endfor
  endfor

endfunction
