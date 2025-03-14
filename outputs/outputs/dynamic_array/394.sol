pragma solidity ^0.8.0;
library
{
     function copy(uint48[7] memory x) public pure
     {






     function concat(uint512[] memory x) public pure returns(string memory) {
         string memory result ="";
         for(uint256 i = 0; i<x.length; i++) result += string(abi.encodePacked(x[i]));
         return result;
     }
}
