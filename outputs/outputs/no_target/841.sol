pragma solidity ^0.8.0;
contract SemanticCheckMutatedSecond {
    function safe_get(uint8 _storage)
        public
        view
        returns (bool, uint8)
    {
        return (false, 7);
    }
}
