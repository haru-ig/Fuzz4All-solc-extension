pragma solidity ^0.8.0;
contract PrevGenerationMutateArray {
    uint[] public array;
    function test() public {
        array.push(1);
    }
}
