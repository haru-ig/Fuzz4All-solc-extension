pragma solidity ^0.8.0;
contract Convert {
     function bytes2str(bytes memory a) public returns (string memory b) {
        bytes memory str = new bytes(a.length);
        for (uint i = 0; i < str.length; i++) {
            str[i] = bytes1(a[i]);
        }
        return string(str);
    }
}
