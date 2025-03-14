pragma solidity ^0.8.0;
contract Test2 {
    int[] public array;
    constructor() {
        array[0] = array[0] >> 1;
    }
}
interface IArray {
}
contract Test2 {
    IArray[] public array;
    constructor() {
        array[0] = array[0] >> 1;
    }
}
