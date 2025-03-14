pragma solidity ^0.8.0;
contract MutatingContract {
    uint256 public constant my_value = 321;
    uint256 public array;
    constructor() {
    }
    function incArray() public view modifies (array)  returns (uint256) {
        array = array + 1;
    }
    function getArray() public view returns (uint256){
        return array;
    }
}
