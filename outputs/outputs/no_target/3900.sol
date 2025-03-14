pragma solidity ^0.8.0;
 contract B {
     uint x;
     constructor () public {x = 1;}
     function setX(uint _x) public {x = _x;}
     function getX() public view returns(uint y) {return x;}
 }
