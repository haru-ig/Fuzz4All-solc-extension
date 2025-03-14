pragma solidity ^0.8.0;
contract SemanticMutation7 {
    function test0()
        public
        pure
        returns (bytes1 bytearray[3][3] memory)
    {
        return [bytearray(-1, 1, 2)];
    }
    function test()
        public
        pure
        returns (bytes1 v)
    {
        bytes1 z;
        z = (10*1) / (10*3);
        assert (z <= 247);
        v = 4;
        return v;
    }
}
