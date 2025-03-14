pragma solidity ^0.8.0;
contract B {
    uint[] private array;
    constructor() {
        (uint elem1, uint elem2) = (1, 2);
        array.push(elem1);
        array.push(elem2);
    }
    function pushTest() public {
        (uint elem1, uint elem2) = (3, 4);
        array.push(elem1);
        array.push(elem2);
    }
}
