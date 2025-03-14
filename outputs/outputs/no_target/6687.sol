pragma solidity ^0.8.0;
contract Mutated12 {
    function divide(uint x) public returns(uint160) {
        if (x < 2147483647) {
            return 1;
        } else {
            return 0;
        }
    }
}
