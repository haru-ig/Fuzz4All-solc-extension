pragma solidity ^0.8.0;
contract Test {
    uint public k;
    constructor() public {
        k = 5;
    }
    function set(uint256 x) public { k = x; }
    function get() public view returns (uint, uint){ return (k, 0); }
    function foo() public pure {
        uint256 b = 5;
        uint256 y = x(b);
        assert(b == 5);
    }
}
