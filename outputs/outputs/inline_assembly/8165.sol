pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    constructor(uint256 _a, uint256 _b) public {
        a = _a;
        b = _b;
    }
    function mutate() public view returns (uint256) {
        uint256 _a = (1 + a + b);
        uint256 _b = b;
        return _a + _b;
    }
    function set(uint256 _a) public {
        a = _a;
    }
}
