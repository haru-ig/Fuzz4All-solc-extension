pragma solidity ^0.8.0;
contract MutatedContract {
    uint public array;
    uint public constant my_value = 321;
    constructor() {
        array = my_value;
    }
    uint public last;
    function mutatedArray() public view returns (uint) {
        return array + last;
    }
}
