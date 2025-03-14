pragma solidity ^0.8.0;
contract C {
    string public constant value = '0x00000000000000000000000000000000000000000000000000000000000000';
    bytes32 public constant x = '0x797363f35e00000000000000000000000000000000000000000000000fe0000000000000000000000000000000000';
    bytes32 private constant y = '0x9930274e720693880e8445ab05cbea3e7f647c190c9c1dccc482d01843d6010';
    function setX(string calldata _x) public returns (bytes32) {
        bytes32 a = bytes32(uint64(_x));
        setX(a);
        return getX();
    }
    function getX() public view returns (bytes32) {
        return x;
    }
}
