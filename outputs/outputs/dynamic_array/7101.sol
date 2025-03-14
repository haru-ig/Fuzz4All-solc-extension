pragma solidity ^0.8.0;
contract Test {
    address[] public arr;
    function test() public {
        address[] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            _store(oldStorage[i]);
        }
    }
    function _store (address x) private {
        arr.push(x);
    }
}
