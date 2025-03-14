pragma solidity ^0.8.0;
library mutantSolidity81502997050Library {
    function change() pure public returns (uint) {
        return change();
    }
}

pragma solidity ^0.8.0;
library mutantSolidity89882659130Library {
    struct Mutant {
        uint x;
        uint y;
        uint value;
        uint[2][2] arr;

        function change() pure public returns (uint) {
            uint[2][2] storage arr22 = arr;
            uint[2][2] storage a = arr22;
            a[0][0] = 0x0123456789abcdef;
            return a[0][0];
        }
    }
}
