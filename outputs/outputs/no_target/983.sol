pragma solidity ^0.8.0;
contract SemanticMutation13 {

    mapping (uint => uint) public x;


    function test0()
        public
        pure
        returns (uint256)
    {
        x[0] = 1000;
        return 0;
    }
}
