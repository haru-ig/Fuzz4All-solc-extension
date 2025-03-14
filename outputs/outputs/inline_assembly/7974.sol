pragma solidity ^0.8.0;
contract L71MultipleReturn5 {
    bool x;
    uint y;
    uint z;
    function returnTrue() public returns (bool, uint z, uint y, uint x) {
        uint[] memory args = new uint[](4);
        args[0] = y;
        args[1] = x;
        args[2] = z;
        args[3] = 1;
        return (true, z, y, x);
    }
}
