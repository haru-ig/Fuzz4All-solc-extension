pragma solidity ^0.8.0;
contract ArrayMutationsC6259 {
    uint public a;
    uint public b;
    uint public c;
    function setA(uint a_, uint b_, uint c_) public {
        a = a_;
        b = b_;
        c = c_;
    }
    function getA() public view returns (uint) {
        return a;
    }
    function getB() public view returns (uint) {
        return b;
    }
    function getC() public view returns (uint) {
        return c;
    }
}
