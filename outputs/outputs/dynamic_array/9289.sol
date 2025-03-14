pragma solidity ^0.8.0;
contract semanticEquivalentMutation7 {
    struct ArrayB {
     address x;
     uint256 y;
    }
    uint8[10] nonDynamic;
    function semanticEquivalentAfterMutation(ArrayB memory x)
    public
    pure
    returns (uint)
    {
        x.y = 99;
        if (x.y!= 99) { return 99; }
        bool y2 = x.x == 0x0000000000000000000000000000000000000000;
        bool y3 = nonDynamic[0] == 0x00;
        x.x = 0x000000000000000000000000000000000000000;
        return 1;
    }
}
