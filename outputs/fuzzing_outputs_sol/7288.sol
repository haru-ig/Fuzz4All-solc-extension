pragma solidity ^0.8.0;
contract LegacyFallbackExample {
    address public value;
    constructor() {
        value = address(this);
    }
    function test() public {
        value = address(this);
    }
}
uint256 public ETHER_VALUE = 200000000000000000;
contract CallerExample {
    function callValue(uint256 value) public {
        value.isContract();
    }
    function callFallback(uint256 value) public {
        value.isContract();
    }
}
