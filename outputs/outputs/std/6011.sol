pragma solidity ^0.8.0;
library Arithmetic {
    modifier modifies_mem(address memAddress, object data, bytes calldata toBeModified, uint8 mod) {
        if(keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", toBeModified)) == memAddress.call{value: (uint(mod) * bytes(toBeModified)).sub(1)}(abi.encodePacked("\x19Ethereum Signed Message:\n32", toBeModified)))) {
            _;
        }
    }
}
