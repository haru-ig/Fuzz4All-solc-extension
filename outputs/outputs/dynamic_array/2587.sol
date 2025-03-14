pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod3
{
    uint[] private a;
    constructor () public {
        a.push(1);
    }
    function test() public {
    }
}
pragma solidity ^0.8.0;

contract SemanticEquality_ArrayMutations14
{
    function test() public {
        SemanticEquality_ArrayMutations14_mod2 x = new SemanticEquality_ArrayMutations14_mod2();
        SemanticEquality_ArrayMutations14_mod3 y = new SemanticEquality_ArrayMutations14_mod3();
        assert(a14Eq(y.a, x.a) == true);
    }
    function a14Eq(uint[] memory x, uint[] memory y) internal pure returns (bool) {
        if (x.length!= y.length)
            return false;
        bytes32[] memory result = new bytes32[](x.length);
        uint i;
        uint i_l = x.length;
        for (i = 0; i < i_l; i++)
        {
            bytes32 a = a14Eq(x[i], y[i]);
            if (a!= result[i])
                return false;

        }
        return true;
    }
}
