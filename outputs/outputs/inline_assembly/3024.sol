pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    bytes32 public constant x = '0x44';
    function getX() public view returns (uint) {
        uint a = 0;
        assembly {
            a := mload(add(a, 1))
        }
        uint b = uint(a);
        c = b;
        return c;
    }
}
