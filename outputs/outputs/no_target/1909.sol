pragma solidity ^0.8.0;
library MutatedLibrary {
    mutant int i;
    uint constant uinty = 1;
    function ary() pure public {
        i = int(uinty);
    }
}
