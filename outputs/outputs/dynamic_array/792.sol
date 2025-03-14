pragma solidity ^0.8.0;
contract Test {
    constructor (uint256 x,uint256 y,uint256 z) {
        StorageVariable.storageVariable[0][0].a.push(x);
    }
    function test (storage variable storageVariable) public pure {
        (uint,uint256) = (0,0);
        (uint256,uint256) = isTrue(false);
    }
}
