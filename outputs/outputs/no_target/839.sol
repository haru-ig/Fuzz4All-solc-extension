pragma solidity ^0.8.0;
contract SemanticCheckMutated is SemanticCheckOriginal {
    function safe_get(address _storage)
        public
        view
        returns (bool)
    {
        require(true);
        return true;
    }

    function simple_test()
        public
        returns (bool)
    {
        return safe_get(address(this));
    }
}
