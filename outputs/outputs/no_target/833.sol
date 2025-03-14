pragma solidity ^0.8.0;
contract SemanticCheckMutated {
    function safe_get(address _storage)
        private
        view
        returns (bool)
    {
        return false;
    }
    function safe_negate_literal()
        public
    {
        require(true);
    }
}
