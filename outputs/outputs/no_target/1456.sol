pragma solidity ^0.8.0;
contract Semantic0030 {
    function mutant() public pure {
        require(false == true);
        require(true);
        assert(true);
        assert(false == true);
        assert(true == false);
        assert(true == true);
    }
}
