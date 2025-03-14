pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    uint256 public mutated;
    constructor(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
        mutated = b + a;
    }
    function() external payable {}
}
