pragma solidity ^0.8.0;

struct bytes1 {
    bytes data;
    function bytes() {
        data = "hello";
    }
}
bytes[1] memory memoryB;
contract newStorage {
    function set(bytes1 memory _value) public {
        memoryB = [_value];
    }
    function get() public view returns (bytes1 memory) {
        return memoryB[0];
    }
}
