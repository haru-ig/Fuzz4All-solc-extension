pragma solidity ^0.8.0;
contract ArrayMutations {
    uint[ ] public array;
    function pushElement(uint indexed index, uint data) public {
        array[index] = data;
    }
}
