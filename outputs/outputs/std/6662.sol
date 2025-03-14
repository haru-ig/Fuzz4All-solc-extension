pragma solidity ^0.8.0;
contract Mutate75 {
    uint8[] x;
    constructor() public {
        x = new uint8[](1);
        for(uint256 i=0;i<x.length; i++){
            x[i] = uint8(i);
        }
    }
    function getX() public view returns ( uint8[] memory ) {
        return x;
    }
}
