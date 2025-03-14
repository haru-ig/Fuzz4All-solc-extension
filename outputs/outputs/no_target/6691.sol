pragma solidity ^0.8.0;
contract Mutated13 {
    function subtract(int x) public returns (bool) {
        uint w;
        if (x < 0) {
            if (x == uint(-111)) {
                w = x;
            } else {
                var x = uint(-111);
                w = x + uint(-1);
            }
            return true;
        } else {
            return false;
        }
    }
}
