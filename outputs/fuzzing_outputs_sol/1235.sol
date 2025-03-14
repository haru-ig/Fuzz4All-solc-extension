pragma solidity ^0.8.0;
contract SemanticsEquivalence6 {
    function modify() public {
        uint j;
        for (j = 0; j < 10000000; j++) {
            uint s = j + 1;
            if (j == 5000000) {
                uint g = s;
            }
        }
    }
}
contract SemanticsEquivalence7 {
    function modify() public {
        uint j;
        for (j = 0; j < 10000000; j++) {
            uint s = j + 1;
            if (j == 5000000) {
                uint g = s;
            }
        }
    }
}
