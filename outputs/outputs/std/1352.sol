pragma solidity ^0.8.0;
contract ArraysModerated {
    address addr;
    uint public value2;
    uint public constant TEST_VALUE = 20;
    bytes4 public constant GAS_COST = 1800;
    constructor () {
        value2 = TEST_VALUE;
    }
    modifier mod1800 {
        require(msg.value == GAS_COST, "");
        _;
    }
    function changeAndReturn(uint value) public mod1800 {
        value2 = value;
        return value;
    }
}
