pragma solidity ^0.8.0;
contract SemanticCheck {
    function safe_get(address _storage)
        public
        view
        returns (bool)
    {
        address memory storage = _storage;
        (, bool memory found) = storage;
        return found;
    }
}
