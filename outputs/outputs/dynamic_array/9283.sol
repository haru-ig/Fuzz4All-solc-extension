pragma solidity ^0.8.0;
contract semanticEquivalentMutation9 {
    function semanticEquivalentAfterMutation(uint8[3] memory A) pure
    returns (uint, uint)
    {
        uint x1 = 1;
        uint y3 = 3;
        uint8 xt = 1;
        uint zt = 3;
    }
}
pragma solidity ^0.8.0;
contract semanticEquivalentMutation10 {
    function semanticEquivalentAfterMutation(uintx[30] memory A) pure
    returns (uintx)
    {
        uint x1 = 1;
        uint y3 = 3;
        uint8 xt = 1;
        uint zt = 3;
    }
}
