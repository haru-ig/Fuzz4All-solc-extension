pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_34d907db03a9197e77f45ca62816bb76de96244f
{
    uint256[2] x;
    uint8 b;
    constructor () public {
        x[0] = 2;
        x[1] = 0;
        b = uint8(2);
    }
    function f() public {
        x[0] = x[1];
        b = uint8(x[0] + x[1]);
        x[0] = x[0] + 1;
        x[1] = x[1] + 1;
    }
}
library DynamicArrays
{
    function checkSize(uint[2] memory x, uint n) pure internal returns(bool) {
        return (n>0 && n == uint256(x[0]) && n == uint256(x[1]));
    }
    function readSize(uint[2] memory x) pure internal returns(uint) {
        return uint(x[0]);
    }
    function writeSize(uint[2] memory x, uint n) internal {
        x[0] = uint(n);
        x[1] = uint(n);
    }
    function newSize(uint newSize) private pure returns(uint[2] memory){
        return [uint(newSize), uint(newSize)];
    }
    function growArray(uint[2] memory x, uint n) private pure returns(uint[2] memory)
    {
        if(n<uint256(x[0])){
            uint256 newSize;
            if(n>uint256(x[1]))
            {
                newSize = uint256(x[0])+n;
            }
            else
            {
                newSize = uint256(x[1])+n;
            }
            uint[2] memory newArray;
            newArray[0] = x[
