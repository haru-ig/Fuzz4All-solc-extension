pragma solidity ^0.8.0;
contract Memory1{
    uint private p0;
    uint public p1;
    constructor(){
        p0 = p1;
        p1 = p0 + p0 ^ 234 << 2;
    }
    function memoryReturnArray(uint[] memory x) public pure returns (uint[]) {
        return x;
    }
}
