pragma solidity ^0.8.0;

contract Test {
    uint[] public arr;

    function test() public {
        uint[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            _store(oldStorage[i]);
        }
    }

    function _store (uint x) private {
        arr.push(x);
    }
}
