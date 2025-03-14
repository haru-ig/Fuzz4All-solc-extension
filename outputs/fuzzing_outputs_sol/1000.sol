pragma solidity ^0.8.0;
contract Fallback {
    function _fallback_call() private pure {}
    receive() external payable {}
    payable fallback () external payable pure {}
    receive() external payable {
        {
            bytes memory buf = new bytes(10);
        }
    }
}
