pragma solidity ^0.8.0;
contract semanticEquivalentMutation11 {
    struct ArrayA {
     uint256 x;
     uint y;
    }
    function semanticalEquivalentAfterMutation(ArrayA storage A)
    public
    pure
    returns (uint)
    {
        uint X = 1;
        uint Y = 3;
        bool Y2 = false;
        A.y = 1;
        return 1;
    }
}
