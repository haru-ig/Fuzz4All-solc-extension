pragma solidity ^0.8.0;
contract Test {
    uint256 public a_;
    address public b_;
    event Event();
    constructor(address _a, address _b, uint256 _c) {
        a_ = _a;
        b_ = _b;
    }
    modifier foo() {
        emit Event();
        _;
    }
    func() public payable payable foo
    {
        uint256 _c = (uint256(a_));
        uint256 _d = a_;
    }
}
