pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    struct ArrayA {
     uint8 x[];
     uint256 y;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A)
    public
    pure
    returns (uint)
    {
        uint x = 0;
        uint y = 1;
        A.x[0] = 2;
        A.x[1] = 3;
        return 2;
    }
}
