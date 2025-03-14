pragma solidity ^0.8.0;
contract Mutated13 {
    function subtract(int x) public returns(bool) {
        uint41 result = uint41.max / 2 - uint41(x * 2 + 1);
        if (result < uint41(-0x7fffffffffffffff)) {
            return true;
        } else {
            return false;
        }
    }
}
