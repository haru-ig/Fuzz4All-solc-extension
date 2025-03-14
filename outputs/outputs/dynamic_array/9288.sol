pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    struct ArrayA {
     address x;
     uint256 y;
     address z;
    }
    function semanticEquivalentAfterMutation(ArrayA memory A)
    public
    pure
    returns (uint)
    {
        uint x = 1;
        uint y = 3;
        A.z.transfer(1);
        bool y2 = true;
        return 1;
    }
}
