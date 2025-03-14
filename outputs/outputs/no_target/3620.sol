pragma solidity ^0.8.0;
contract L {
    function f(uint)
    internal
    pure
    returns(uint8 _x) {
    }
}
interface Tester {
    function f1() external pure;
    function f2() external pure returns (uint256);
}
contract L {
    function f(uint)
    public
    pure
    returns(uint8 _x) {
    }
}
