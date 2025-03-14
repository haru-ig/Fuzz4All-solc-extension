pragma solidity ^0.8.0;
contract InequalityOfSemi {
    uint constant x = 256;
    function div(uint a) private pure returns (uint) {
        return (a / 2 - x) / 2;
    }
}
pragma solidity 0.8.0;
contract SemanticsEquivalence24xEquivalence16xEquivalence {
    function div(uint a) private pure returns (uint) {
       return a / 4 / x;
    }
}
contract SemanticsEquivalence214xEquivalence {
    uint constant x = 8;
    function foo() public pure {
        var a = 2**(uint256(div(x - 1))) + x + x;
    }
}
contract SemanticsEquivalence208xEquivalence {
    uint constant x = 256;
    function foo() public pure {
        var y = x;
        assert(div(y) == x);
    }
}
pragma solidity ^0.8.0;
contract SemanticsEquivalence228xBecause {
    uint constant x = 32;
    bool constant y = x > 1;
    uint constant z = x;
    uint i = 1;
    uint constant j = 16;
    uint constant k = 16 * 256;
    uint constant l = 256 + x;
    uint constant m = udiv(x, x);
    uint constant n = div(x, x, x);
    function foo() public pure {
        x = if(x > 1, x - 1, z);
        x = if(i > 1, i - 1, x);
        i = if(y, i + 1, i);
        i = if(j > k, j - k, i);
        i = if(j < l, j + m, i);
        i = if(z >= 2, z - 1, i);
        i = if(true, x, i);
        x = if(x >= y, z, x);
        x = if(x <= j, k, x);
        x = if(z >= y, y + 1, x);
        x = if(y <= z, x + 1, x);
        x = if(x + 1 <= y, j, x);
        x = if(i >= cdiv(x - z, k), k, x);
        x = if(i < k ^ true, i, x);
        i = cmod(k, x) + x;
        i = if(x <= j ^ z <= a, i + 1, j);
        i = x < i;
    }
