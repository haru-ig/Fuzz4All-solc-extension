pragma solidity ^0.8.0;
contract Test8FF8 {
    address public a_;
    address public b_;
    mapping(address => uint256) public c_;
    constructor(address a, address b, uint256 d) public {
        a_ = a;
        b_ = b;
        c_[a] = d;
    }
    function f_(uint256 x) public pure {
        uint256 g = Test8FF8.f_(x);
    }
}
