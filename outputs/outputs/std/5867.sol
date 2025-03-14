pragma solidity ^0.8.0;
contract Array {
    using Array for uint[];
    uint[] public array;
    constructor() {
        array.push(1);
        array.push(2);
    }
    function minimum() public view returns (uint) {
        return array[0];
    }
    function maximum() public view returns (uint) {
        return array[1];
    }
    function sum() public view returns (uint) {
        return array.reduce((r, a) => r + a);
    }
}
