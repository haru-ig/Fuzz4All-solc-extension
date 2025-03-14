pragma solidity ^0.8.0;
contract ArrayMutations {
    string[ ] public array;
    uint[ ] public array2;
    function addNewElement() public {
        array.push("element");
    }
    function changeElement() public {
        array2[3] = array[5];
    }
    function changeBoth() public {

        array[5] = "new element";
        array2[5] = "new element";
    }
}
