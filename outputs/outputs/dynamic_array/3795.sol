pragma solidity ^0.8.0;
contract C {
    bytes20 x;
    constructor(bytes20 memory arg) public payable {
        x = arg;
    }
    function modifiesArray(bytes20 memory array) public pure returns (bool) {
        bytes20 s0 = array[0];
        x = s0;
        return array.length <= 20;
    }
}
