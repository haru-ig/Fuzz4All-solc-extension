pragma solidity ^0.8.0;
contract ArrayMutations2 {
    string[ ] public array;
    function addNewElement() public {
        array.push("element");
    }
    function changeElement() public {
        array[3] = "new element";
    }
}
