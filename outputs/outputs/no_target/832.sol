pragma solidity ^0.8.0;
contract SemanticCheckOld {
    function safe_get(address _storage)
        public
        view
        returns (bool)
    {
        return true;
    }
    function safe_negate_literal()
        public
    {
        require(false);
    }
}
