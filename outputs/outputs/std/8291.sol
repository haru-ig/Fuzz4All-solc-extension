pragma solidity ^0.8.0;
contract ArrayMutations {
    int256[ ] public array;
    function addNewElement() public {
        array.push(1);
    }
    function changeElement() public {
        array[3] = 9;
    }
}
