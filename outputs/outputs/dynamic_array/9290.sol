pragma solidity ^0.8.0;
contract semanticEquivalentMutation11 {
    struct ArrayB {
     uint8 x;
     uint y;
    }
    function semanticEquivalentAfterMutation(ArrayB memory B)
    public
    pure
    returns (uint8 x)
    {
        uint x = 0;
        uint y = 1;
        B.x = 2;
        B.y = 3;
        return 1;
    }
}
