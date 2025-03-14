pragma solidity ^0.8.0;
contract Mutate75 {
    uint64[8] x;
    bytes memory y;
    constructor() public {
        x[0] = 0;
        x[2] = 1219267181921371921923;
        x[4] = 721899033782598812192312;
        x[6] = 398364781231126189599593871;
        y = "0x4A1242e9789229111eD0B280F999c330AA67fC0d";
    }
    function getX() public view returns ( uint64[6] memory, bytes memory ) {
        return x;
    }
}
