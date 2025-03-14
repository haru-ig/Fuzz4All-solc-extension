pragma solidity ^0.8.0;
contract C {
    bytes4 constant FALLBACK_FUNCTION_SIGNATURE = bytes4(keccak256('fallback()'));
    uint private x;
    function () external payable {
        x++;
    }
    receive() external payable {
        revert();
    }
}
