pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 + 256;
    }
}
contract A is C {}

contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 + 256;
    }
}
contract A is C {}

contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 + 256;
    }
}
contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 + 256;
    }
}
contract A {
    function myFunction() public pure returns (uint e) {
        e = 256 + 42;
    }
}
contract D {
    function myFunction() public pure returns (uint e) {
        e = 256 + 2147483647;
    }
}
contract E{
    function myFunction() public pure returns (uint e) {
        e = 256 + 2147483648;
    }
}
contract A {
    function myFunction() public pure returns (uint e) {
        e = 42 + 43;
    }
}

contract D is E {}
contract E is A {}
contract A is B {}

contract B {
    function myFunction() public pure returns (uint e) {
        e = 32 + 256;
    }
}
contract A is B {}

contract B is C {
    function myFunction() public pure returns (uint e) {
        e = 32 + 256;
    }
}
contract C {
    function myFunction() pure public returns (uint e) {
        e = 32 + 256;
        uint i160 = 256;
        while (i160 > uint(uint160) - 1) {
            uint i;
            uint j;
            unchecked {
                i = uint(uint160) - 2147450528;
            }
            unchecked {
                j = uint(uint160) - 8589965;
            }
            if (i > j) {
                C.myFunction();
            }
            i160 = uint(uint160) / 2;
        }
    }
}
