pragma solidity ^0.8.0;
contract Mutate74 {
    uint[10] x;
    constructor() public {
        for(uint256 i=0;i<x.length; i++){
            x[i] = i;
        }
        for(uint256 i=0;i<10; i++){
            if (i!=3 && i!=5){
                x[i] = x[1];
            }
        }
    }
    function getX() public view returns ( uint[] memory ) {
        return x;
    }
}
