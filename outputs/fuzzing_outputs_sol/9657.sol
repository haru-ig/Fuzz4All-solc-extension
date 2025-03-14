pragma solidity ^0.8.0;
contract Mutated {
    function test() public {
        uint i = 0;
        i = 1;
    }
}

contract Multi {
    function test() public {
        Simple s = Simple(0x0);
        Mutated m = Mutated(0x0);
        if (address(s) == 0x0) {
            m.test();
        } else {
            s.test();
        }
    }
}
