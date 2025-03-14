pragma solidity ^0.8.0;
contract A {
    uint public value;
    constructor () {
        value = 0;
    }
    function run(uint x, uint y) public view returns (uint result) {
        result = x + y;
    }
    function add(uint x, uint y) public view returns (uint) {
        return run(x, y) + value;
    }
}
contract Fallback {
    function fallback() public {
        revert("Fallback contract is currently unavailable");
    }
}
contract Fallback2 {
    function () external payable {
        revert("Fallback contract is currently unavailable");
    }
}
