pragma solidity ^0.8.0;
contract FallbackRevert {
    uint x = 42;
    function f1() public {
        x = x*42;
        require(true, "Must revert");
    }
    function f2() public {
        x = x**42;
        x = 3**42;
    }
    function f3() public {
        uint i = 0;
        do {
            f1();
            i += 1;
        } while (i < 10);

        do {
            f2();
            i += 1;
        } while (i < 9);
    }
    function f4() public {
        uint[] memory ints = [13, 42];
        for (uint i = 0; i < ints.length - 1; i++) {
            if (ints[i]!= 13) {
                require(false, "Failed revert");
            }
            f1();
        }
        for (uint j = 0; j < ints.length; j++) {
            if (ints[j]!= 42) {
                require(false, "Failed revert");
            }
            f2();
        }
    }
}
