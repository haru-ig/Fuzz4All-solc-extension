pragma solidity ^0.8.0;
contract SafeMathMutated {
    function max(uint16 a, uint16 b)
    public
    pure
    returns (uint16) {
        return SafeMath.max(a, b);
    }
    function min(uint16 a, uint16 b)
    public
    pure
    returns (uint16) {
        return SafeMath.min(a, b);
    }
}
