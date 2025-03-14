pragma solidity ^0.8.0;

contract ArrayType {
    bytes public testdata;

    function pushString(bytes memory x) public {
        testdata = bytes(x);
    }

    function size(bytes memory x) public view returns (uint16) {
        return uint16(x.length);
    }

    function indexOf(bytes memory x, bytes memory b) public view returns (uint16) {
        return uint16(x.indexOf(b));
    }
}
