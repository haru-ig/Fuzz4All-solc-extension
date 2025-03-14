pragma solidity ^0.8.0;
contract MutatedEtherFallback {

    byte constant ETHER_FALREF = 0x00;

    function fallback() external payable returns(bytes memory) {
        byte[] memory data = abi.encode(ETHER_FALREF);
        unchecked {
            revert(byte(data[0]), data[1], data);
        }
    }
}
