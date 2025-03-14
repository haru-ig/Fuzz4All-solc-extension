pragma solidity ^0.8.0;
contract Mutate78 {
    bool private a_;
    int private b_;
    constructor() public {
        a_ = true;
        b_ = 255;
    }
    function modify(uint j) public {
        a_ = j > 4? false : true;
        b_ = j == 255? 0 : j + 1;
    }
    function getA() public view returns ( bool ) {
        return a_;
    }
    function getB() public view returns ( int ) {
        return b_;
    }
}
