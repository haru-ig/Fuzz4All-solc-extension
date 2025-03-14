pragma solidity ^0.8.0;
contract semanticallyEquiv6
{
    function semanticallyEquiv6() public pure {
        assert(uint == int8);
        assert(uint == int8) && assert(uint == int8);
        assert(uint == int8) || assert(uint == int8);
        assert(uint == int8) == assert(uint == int8);
    }
}
