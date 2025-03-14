pragma solidity ^0.8.0;
contract Array {
    function sumArray(uint[] memory a) public pure returns(uint) {
        uint s = 0;
        for (uint i = 0; i < a.length - 1; i++) {
            s += a[i];
        }
        return s;
    }
}
