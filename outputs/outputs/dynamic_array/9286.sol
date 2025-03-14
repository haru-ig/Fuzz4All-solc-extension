pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {

    struct Object5 {
     uint256 x;
    }
    struct Object3 {
     address a;
     uint256 b;
    }
    function semanticEquivalentAfterMutation(Object5 memory A)
    public
    pure
    returns (uint)
    {


        A A;
        uint x = 1;
        A.x = 1;
        return 1;
    }
}
