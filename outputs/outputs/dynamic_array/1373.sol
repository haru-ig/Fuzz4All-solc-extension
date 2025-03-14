pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck9 {
    function f8(struct { uint public member1; uint public member2; uint public member3; } memory m) public pure returns (uint p) {
        if (m == struct(0, 0, 0)) {
            uint[] memory m1;
            return;
        }
        uint k;
        p = k;
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutatedDynamicArrayTypeCheck10 {
    function f10(struct { uint public member1; uint public member2; uint public member3; } memory m) public pure {
        if (m == struct(0, 0, 0)) {
            uint[] memory m1;
            require(m1!= m2, "error");
            uint k;
            k = 0;
        }
    }

    function f11() public pure {
        uint[] memory m1;
        uint[] memory m2;
    }

    function f11Mutated(uint[] memory m1) public pure {
        require(m1[0]!= m2[0], "error");
    }
}
