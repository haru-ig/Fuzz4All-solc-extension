pragma solidity ^0.8.0;
contract SemanticMutation7 {
    constructor() public {

    }
    pragma solidity >=0.8;
    function test()
        public
        pure
        returns (uint8 y)
    {
        y >>= 1;
        assert (y <= 255);
        return y;
    }
}
