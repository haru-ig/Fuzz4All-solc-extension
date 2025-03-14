pragma solidity ^0.8.0;
contract LegacyFallbackExample {
    address public value;
    bytes public storeddata;
    constructor() {
        value = address(this);
        storeddata = abi.encode(true);
    }
    function test() public payable {
        value = address(this);
        storeddata = abi.encode(true);
    }
}

contract Caller {
    function test() public payable {
        FallbackExample().test.value(0)(value)
    }
    receive() external payable {
        LegacyFallbackExample().test.value(0)(value)
    }
}
