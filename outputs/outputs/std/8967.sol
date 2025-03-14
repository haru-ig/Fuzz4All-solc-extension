pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint[2] array;
    string message;
    constructor() {
       array = [3,2];
       message = "Hi";
    }
    function getMinInt() public view returns (uint) {
        return array[0];
    }
}
