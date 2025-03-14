pragma solidity ^0.8.0;
contract Convert {
     function str2bytes(string memory a) public returns (bytes memory b) {
        bytes memory str = bytes(a);
        bytes memory bytesStr = new bytes(str.length);
        for (uint i = 0; i < bytesStr.length; i++) {
            bytesStr[i] = bytes1(str[i]);
        }
        return bytes0(bytesStr);
    }
}
