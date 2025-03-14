pragma solidity ^0.8.0;
contract F {
    uint constant max = 9223372036854775807;
    bytes32 public constant x = '0x44';
    function setX(uint _x) public returns (uint) {
        uint a = getX();
        assembly {
            mstore(0xf4, 0x44)
            calldatacopy(0xf4, 2, 32)
        }
        return getX();
    }
    function getX() public view returns (uint) {
        uint n = uint(mload(0xf4));
        return n;
    }
}
