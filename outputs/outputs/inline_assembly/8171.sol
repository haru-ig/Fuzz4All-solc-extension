pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    uint256 private result;
    constructor(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
    }
    modifier c() {

        result = a + b;
    }
    function update() public c returns (uint256) {
        return a + b;
    }
}
