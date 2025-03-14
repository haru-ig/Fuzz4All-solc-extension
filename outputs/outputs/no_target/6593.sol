pragma solidity ^0.8.0;
contract modifierV
{
    function f(uint x) public pure returns(uint){
        uint y;
        assembly ifeq(eq(m, 0), 0, y)
        {
            m := add(y, x)
        }
        return y;
    }
    function g(uint y) public pure returns(uint) {
        return f(y) + 1;
    }
}
contract myContractV is modifierV
{
    function f(uint y) public pure {}
}
