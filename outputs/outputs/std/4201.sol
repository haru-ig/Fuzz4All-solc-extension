pragma solidity ^0.8.0;
contract Mod {
    uint constant SIZE = 10;
    uint[SIZE] memory private x;
    uint y;

    function Modify(
    uint[SIZE] memory x,
    uint newValue,
    uint z
    ) public pure {
      x[z] *= newValue;
    }
}
