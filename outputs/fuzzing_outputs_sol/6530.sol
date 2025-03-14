pragma solidity ^0.8.0;
contract C {
    bytes32 name;
    constructor() {
        name = "My first contract";
    }

    modifier isFunction {
        if (uint80(address(this).call{value: msg.value}([]))) {
            _;
        } else {
            revert();
        }
    }
    function g() public returns (uint32) isFunction {
        return 0;
    }
}
