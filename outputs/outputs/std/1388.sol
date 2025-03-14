pragma solidity ^0.8.0;
uint[] a1;
uint[] a2;
uint[] a3;
contract TestArrays {
  function test() public {
    a1 = [2];
    a2 = [[ 2],[ 4 ],[ 6 ],[ 8 ],[10 ],[12 ]];
    a3 = [ [42], [0xa1234] ];
    a4 = a2;
    a5 = a2[0];
    a6 = a1[3];
  }

}
