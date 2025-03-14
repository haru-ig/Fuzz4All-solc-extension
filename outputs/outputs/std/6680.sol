pragma solidity ^0.8.0;
contract Mutate77 {
    bytes16 private x_;
    string private y_;
    constructor(string memory str) public {
        x_ = str;
        y_ = str;
    }
    function modify(bytes16 x) public {
        x_ = x;
    }
    function getX() public view returns ( bytes16 ) {
        return x_;
    }
    function getY() public view returns ( string memory ) {
        return y_;
    }
 }
