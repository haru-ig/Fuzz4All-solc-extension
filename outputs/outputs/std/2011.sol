pragma solidity ^0.8.0;
contract Array_equivalent_15 {
   function setUnsigned(uint[] storage array, uint idx, uint value) public {array[idx] = value;}
   uint[] public array;
   uint private minVal = 16777215;
   uint private maxVal = 0;
   uint private avgVal = 0;
   function min(uint[] storage x) public view returns (uint) {return uint(x[0]);}
   function max(uint[] storage x) public view returns (uint) {return uint(x[array.length-1]);}
   function sum(uint[] storage x) public view returns (uint) {uint sum = 0;uint i;for (i=0; i<x.length; i++) sum = sum+x[i];return sum;}
   function sum2() public view returns (uint) {uint sum = 0;uint i;for (i=0; i<5; i++) sum = sum+x[i];return sum;}
   function get(address a) public view returns (uint[] memory) {return memory[a];}
   function set1(address a) public {memory[a] = new Uint_equivalent_2();}

   function set(address a) public view returns (Uint_equivalent_15 x) {x = memory[a];}
   function get2() public view returns (uint) {return (uint(x)+(uint(x))-637090498);}
}
