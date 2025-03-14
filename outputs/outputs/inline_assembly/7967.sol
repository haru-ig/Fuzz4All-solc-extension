pragma solidity ^0.8.0;
contract L71MultipleReturn4 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (bool, uint z, uint y, uint x) {
        uint[] memory args = new uint[](4);
        args[0] = y;
        args[1] = x;
        args[2] = z;
        args[3] = y;
        return (true, z, y, x);
    }
}
