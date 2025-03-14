pragma solidity ^0.8.0;
contract SemanticCheckMutated2 {
    function get(uint8 _storage)
        public
        view
        returns (bool)
    {
        uint256 _u = uint256(_storage);
        unchecked {
            if (_u < 1e618) {



                return true;
            }



            return false;
        }
    }
}
