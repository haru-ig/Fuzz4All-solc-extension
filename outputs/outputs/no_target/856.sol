pragma solidity ^0.8.0;
contract SemanticCheckMutated4 {
    contract C {
        function m() public pure returns (bool) {
            return true;
        }
    }
    function get()
        public
        view
        returns (bool)
    {
        return C.m();
    }
}
