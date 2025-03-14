pragma solidity ^0.8.0;
contract NestedTest {
    uint[] public arr;
    function test1() public {
        uint[][] memory oldStorage = arr;
        for (uint i=0; i < oldStorage.length; i++) {
            _store(oldStorage[i]);
        }
    }
    function _store2 (uint[] memory s) private {
        for (uint i=0; i < s.length; i++) {
            _store(s[i]);
        }
    }
    function _store(uint x) private {
        if (x == 8) {
            arr.push(8);
        } else {
            arr.push(x);
        }
    }
}
