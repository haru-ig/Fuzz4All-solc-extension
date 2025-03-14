pragma solidity ^0.8.0;
contract New {
    bytes16 constant FALLBACK_ABI = "\x19\x01";
    function fallback() public pure {
        assembly {
            return(0)
        }
    }
    function safeold() public returns(uint) {
        return old(uint(keccak256(abi.encodePacked(FALLBACK_ABI))));
    }
    receive() external pure { }
}
