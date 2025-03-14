pragma solidity ^0.8.0;
contract Mutator2 {
uint a = 1;
uint b = 1;
string c;





function mutate2(string memory _c) public {
b = uint(keccak256(abi.encodePacked(a,b,...)));
a = string(keccak256(abi.encodePacked(c, y,...)));
}
}
