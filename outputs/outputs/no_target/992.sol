pragma solidity ^0.8.0;
contract SemanticMutation14 {
    function update()
        public
        pure
        returns (uint)
    {
        uint b = -34;
        if (b < 0) {
            uint b1 = 0;
        } else {
            uint b1 = 1;
        }
        uint a = 1;
        return a;
    }
}
