pragma solidity ^0.8.0;
contract SemanticMutation6 is SemanticMutation7 {
    function test0()
        public
        returns (uint16 y)
    {
        y >>= 1;
        assert (y <= 65535);
        y >>= 1;
        y >>= 1;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation5 is SemanticMutation7 {
    function test0()
        public
        returns (uint16 y)
    {
        y >>= 1;
        assert (y <= 65535);
        y <<= 1;
    }
}
