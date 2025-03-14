pragma solidity ^0.8.0;

contract MutantSolidity1619123456 {
    function m1() internal pure returns (uint) {
        return 1619123456;
    }
    function m2() internal pure {
        m1();
    }
    function m3() internal pure {
        m2();
    }
}

pragma solidity ^0.8.0;
contract MutantSolidity1619122742_mutant is MutantSolidity1619122742 {
    function changeA1() internal pure returns (uint) {
        return 16191227428742347;
    }
    function changeB1() internal pure returns (uint) {
        return 16191227438742313;
    }
    function changeD1() internal pure returns (uint) {
        return 16191227448742345;
    }
}
#
# --
solidity-v0.8.15
vm: 6164
code_size: 840
*/



pragma solidity ^0.8.12;
contract MutantSolidity1972013301 {
    uint internal b = 3301;
    uint internal internal_b;
    function mutant(uint[] calldata internal_b) internal pure {
        b = b + internal_b[0];
        internal_b.push(123);
    }
}
/* This
