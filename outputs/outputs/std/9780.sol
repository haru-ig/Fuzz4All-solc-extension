pragma solidity ^0.8.0;
contract Math {
    function sum(uint[] memory array_) public pure returns (uint) {
       uint a = 0;
        for(uint i = 0; i < array_.length; i++) {
            a += uint(array_[i]);
        }
        return a;
    }
}
