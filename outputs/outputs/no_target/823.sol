pragma solidity ^0.8.0;
contract SemanticCheckMutated2 {
    function check_negate_literal()
        public pure
        returns(bool)
    {
        while(true){
            address test = address(this);
            assembly {
                let t := mload(0)
                mstore(0, 0xfeefee00000000000000000000000000000000000000000000000000000000e4)
                t := mload(0)
            }
        }
    }
}
