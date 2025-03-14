pragma solidity ^0.8.0;
contract ArrayMutations3 {
    uint[] public uintArray;
    bytes32 public bytesArray;
    function getUint() public view returns(uint) {
        return uintArray[3];
    }
    function getBytes() public view returns(bytes32) {
        return bytesArray;
    }
    function pushUint(uint value) public {
        uintArray.push(value);
    }
    function pushBytes(bytes32 value) public {
        bytesArray = value;
    }
    function popUint() public returns (uint) {
        return uintArray.pop();
    }
    function popBytes() public returns (bytes32) {
        bytesArray = bytes32(0);
        return bytesArray;
    }
}
