pragma solidity ^0.8.0;
contract L71MultipleReturn5 {
    uint[] memory args;
    uint x;
    uint y;
    uint z;
    function returnTrue() public returns (uint, uint) {
        x = y;
        y = z;
        z = x;
        return (z, y);
    }
}
