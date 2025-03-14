pragma solidity ^0.8.0;
contract Test1800D {
    uint[] public array;
    uint[0] public array2;

    constructor () public {
        array = new uint[](10);
        array2 = new uint[](0, 1000);
    }
}
