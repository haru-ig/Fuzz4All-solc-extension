pragma solidity ^0.8.0;
contract Test {
    uint public k = 3;
    uint k1;
    constructor() public { k1 = k; }
    function set(uint256 x) public { k1 = x; }
    function get() public view returns (uint){ return k1; }
}
