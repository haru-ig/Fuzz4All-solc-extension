pragma solidity ^0.8.0;
contract semanticEquivalentMutation11 {
    struct ArrayB {
        uint8 x;
        uint256 y;
    }
    function semanticEquivalentAfterMutation(ArrayB memory B)
   public
   pure
   returns (uint)
   {
        uint x = 0;
        uint y = 1;
        bool x2 = true;
    (x, y) = (2, 3);
    B.x = 3;
    B.y = 4;
    return 1;
   }
}
