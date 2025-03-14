pragma solidity ^0.8.0;
contract SemanticMutation2 {
    function mutate(uint8 v)
        public
        pure
        returns (int8)
    {
        return v >= 1? -v : -v;
    }
}
