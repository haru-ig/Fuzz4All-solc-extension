pragma solidity ^0.8.0;
contract SemanticTest4 {
    uint[] data;
    constructor () public {
        data = new uint[](1);
        data[0] = 10;
    }
    function incrementArray() public {
        data.push(1);
    }
}
