pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrect {
    function sub2(uint a)
        public pure
        returns(uint)
    {
        uint temp = 5 - a;
        return temp;
    }
}
