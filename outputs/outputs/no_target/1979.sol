pragma solidity ^0.8.0;
contract MutatedSematic {
    uint public x;
    function f() public {
        if (x > 32) {
            x <<= 1;
        }
        else {
            x <<= 31;
        }
    }
}

contract Main {
    function f() public {
        NoMutatedSematic NoSematic;
        MutatedSematic MutSematic;
        NoMutatedSematic mutNom;
        MutatedSematic mutMut;
        mutNom.f();
        mutNom.f();
        while (true) {
        }
        mutMut.f();
        mutMut.f();
        mutMut.f();
        mutNom = MutSematic();
        mutMut = MutNom();
        mutMut.f();
        mutSematic = NoMutSematic();
        mutNom = MutNom();
    }
}
