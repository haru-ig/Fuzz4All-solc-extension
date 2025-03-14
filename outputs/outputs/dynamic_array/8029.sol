pragma solidity ^0.8.0;
contract Test47Semant {



    uint public x;
    constructor() public {
        x = 2;
    }
    function setBoolArray() public {
        storage.boolArray = [0, 1, 2, 3];;
    }
    function setNumberArray() public {

        storage0 := bytes32(0);
    }
    function setDynamicArray() public {
        storage.dynamicArray = [0, 1, 2, 3];;
    }
    function setBoolDynamicArray() public {
        storage0 := bytes32(0);
        storage1 := bytes32(0);
    }
}
