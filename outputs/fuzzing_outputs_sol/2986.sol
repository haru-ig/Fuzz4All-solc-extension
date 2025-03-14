pragma solidity ^0.8.0;
contract Caller {
    function callReceiver() public pure returns (bytes32) {
        assembly {
            let result := mload(0x40)
            mstore(0x40, and(mod(add(result, 0x40), 0xffff), not(0x8000)))
            return result
        }
    }
    function callReceiverFallback() public payable {}
}
