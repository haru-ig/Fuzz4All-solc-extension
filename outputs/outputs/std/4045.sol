pragma solidity ^0.8.0;
contract Convert {
   function func(string calldata str) public pure returns (uint) {
       bytes memory temp = new bytes(str.length);
       temp = bytes(str);
       return uint(temp);
   }

     function func_2() public returns (uint) {
       bytes memory temp = new bytes(1);
       temp[0] = 'H';
       return uint(temp);
   }
}
