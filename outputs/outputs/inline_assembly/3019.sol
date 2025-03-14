pragma solidity ^0.8.0;
contract C {
    bytes32 public constant x = '0xDEADBEEF';
    bytes32 public constant z = z1;
    function setX(uint _x) public {
        uint y = _x;
    }
    function z1() public {
        uint y = getZ();
        z = '0xcafebabe';
    }
    function getZ() public view returns (uint) {
        uint a = uint(x);
        uint b = (uint(x) + uint(z)) % max;
        return (b * a);
    }
}
