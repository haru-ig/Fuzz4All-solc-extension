pragma solidity ^0.8.0;
contract semanticEquivalentMutation11 {
    struct ArrayD {
     uint8 x;
     uint256 y;
     uint256 z;
    }
    function semanticEquivalentAfterMutation(ArrayD memory D)
    public
    pure
    returns (uint)
    {
        uint x = 0;
        uint y = 1;
        uint z = 0;
        D.x = 2;
        D.y = 3;
        D.z = 4;
        bool x2 = false;
        return 1;
    }
}
