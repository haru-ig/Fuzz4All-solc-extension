pragma solidity ^0.8.0;
contract Caller {
    function f () internal {
        (bool, bytes memory) = (
            false,
            abi.encode([]),
        );
    }
}
