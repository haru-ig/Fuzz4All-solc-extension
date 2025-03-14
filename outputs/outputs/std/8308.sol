pragma solidity ^0.8.0;
contract ArrayMutations4 {
    uint[5] public array;
    function addNewElement() public {
        array.push(12);
    }
    function modifyElement() public {
        delete array[5];
        array.push(13);
    }
}
