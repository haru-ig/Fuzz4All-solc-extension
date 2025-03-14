pragma solidity ^0.8.0;
contract Fallback {
    function receive() public pure virtual {
        _;
    }
}

contract StorageFallback {
    uint128 field;
    function getField() {
        return field;
    }
}
