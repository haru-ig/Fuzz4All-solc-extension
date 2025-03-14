pragma solidity ^0.8.0;
contract Test {
    function func(uint i) public {
        i = i + 1;
        uint a;
        if (a) i = i + 1;
        uint b;
        if (a == 1) {
            b = b + 1;
        } else {
            b = 2;
        }
    }
}
