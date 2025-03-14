pragma solidity ^0.8.0;
contract Memory {
    address[] a;
    function test_return_address() public pure {
        return address(a);
    }
    }
