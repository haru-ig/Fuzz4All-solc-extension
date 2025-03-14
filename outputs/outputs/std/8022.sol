pragma solidity ^0.8.0;
contract Array16
{
    uint[1] memory arrayOf1;
    uint[1] memory arrayOf2;
    uint[1] memory arrayOf3;
    uint[1] memory array4;
    constructor() external {
       arrayOf1 = arrayOf2;
       arrayOf2 = arrayOf3;
       arrayOf3 = arrayOf1;
    }
    function mutator(uint[3] calldata memory aArray) public Mutate_array4(arrayOf1, arrayOf3, arrayOf3, array4) { }
}
