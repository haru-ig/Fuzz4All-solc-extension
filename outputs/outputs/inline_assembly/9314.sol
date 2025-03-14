pragma solidity ^0.8.0;
contract B {
   uint MAX_INTEGER;
   uint constant RANGE = 10;
   uint i;
   uint j;
   uint sum;
   uint min(uint a,uint b) public pure returns (uint x) {
      return  a < b? a : b;
   }
   uint max(uint a,uint b) public pure returns (uint x) {
      return a > b? a : b;
   }
   uint div(uint a, uint b) public pure returns (uint x) {
       return a / b;
   }
   uint mod(uint a, uint b) public pure returns (uint x) {
       return a % b;
   }
   uint mul(uint a, uint b) public pure returns (uint x){
       x = a;
       for(i=1; i < b; i++) {
          x = x*a;
       }
      }
   uint sub(uint a, uint b) public pure returns (uint x) {
      return a - b;
   }
   uint subdiv(uint a, uint dividend, uint divisor) public pure returns (uint x) {
      uint remainder = a % divisor;
       return subtract(a,remainder) / dividend;
   }
   uint add(uint a, uint b) public pure returns (uint x){
       x = a + b;
   }
   function subtract(uint a, uint b) private pure returns (uint x) {
       return a - b;
   }
   function multiply(uint a, uint b) private pure returns (uint x) {
       x = a*b;
   }
   function printMin_max() public {
       uint x = max(min(1, 1), min(2, 2));
   }
   uint internal constant MIN_INTEGER=uint(-2**31);
   function useMaxInteger() public payable {
       uint x;
       assembly {
            mstore32(i,MAX_INTEGER)
            mstore32(j,MIN_INTEGER)
            x := slt(i,j)
            mstore32(x, x)
       }
   }
   function add(address addr,uint amount) public {
       uint a;
       uint z;
       uint res;
       uint m;
       assembly {
           a := mload(addr)
           m := mload(addr)
           msave(addr, a + amount)
