pragma solidity ^0.8.0;
contract C {
    struct L{
        uint c;
    }
    mapping(uint => bytes20) public b;
    constructor () public {
        b[3456].push();
    }
    function modifiesArray(bytes20 memory array) public pure returns (bool) {
        uint256 size = array.length;
        b[c = 5].push();
    }
}
