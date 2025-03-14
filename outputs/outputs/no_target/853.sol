pragma solidity ^0.8.0;
contract SemanticCheckMutated1 is SemanticCheckMutated2 {
    function get()
        public
        view
        returns (bool)
    {
        return true;
    }
}
