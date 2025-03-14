pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    uint internal i;
    function decrement() public returns(uint) {
        i = i - 1;
        return i;
    }
}
contract SemanticsEquivalence7 {
    uint internal i;
    function decrement() public returns(uint) {
        for (uint j = 0;j < i;j++) {
        }
    }
    function test() public pure {
        uint z;
        for(uint k = 0;k < 5;k++) {
            if (5 % 3 == 1) {
                z = 1;
            }
        }
    }
}
contract SemanticsEquivalence8 {
    uint internal i;
    function decrement() public returns(uint) {
        if (i < 5) {
            i = i - 3;
        } else {
            i = i - 1;
        }
        return i;
    }
    function decrease() public {
        i = i - 1;
    }
}
contract SemanticsEquivalence9 {
    function test() public pure {
        uint z;
        for(uint k = 0;k < 5;k++) {
            if (5
