pragma solidity ^0.8.0;
library NonEvidentChangesWrapper {
    uint8 x;

    function f() public {
        x = 1;
    }
}
