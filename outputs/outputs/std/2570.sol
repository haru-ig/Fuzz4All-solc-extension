pragma solidity ^0.8.0;
library Memory {
    function toAddressArr(bytes32 [] memory bytes_) private pure returns (address [] memory) {
        address [] memory addr;
        uint nBytes = bytes_.length;
        for (uint i = 0; i < nBytes; i++) {
            uint n = bytes_[i];
            addr[i] = uintToAddress(n);
        }
        return addr;
    }
    function uintToAddress(uint x) private pure returns (address) {

        bytes32 digest = uint32To0x0(x);
        bytes32 bytes32Temp = digest();

        bytes memory byteArray = new bytes(4);
        for (uint i = 0; i < 4; i++) {
            byteArray[i] = bytes32Temp[i];
        }
        return address(uintBytesToAddress(digest));
    }
    function uintBytesToAddress(bytes memory input) private pure returns (address) {
        return address(uintToBytes(input));
    }
    function uintToBytes(uint x){
        return bytes32(x);
    }
}
