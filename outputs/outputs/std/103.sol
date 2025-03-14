pragma solidity ^0.8.0;
abstract contract MutateProgram {
    function _setLen_uint(uint[] storage a, uint len, uint x) public pure {
        if (len < a.length) { a.length = len; }
        a[len] = x;
    }
}
