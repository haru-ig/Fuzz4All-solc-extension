pragma solidity ^0.8.0;
contract FallbackMutator {
    uint internal constant ERROR_CODE = 7;

    function _fallback_receive() public payable {
        fallback_receive();
    }
    function fallback_receive() public {
        revert(ERROR_CODE);
    }
 }
