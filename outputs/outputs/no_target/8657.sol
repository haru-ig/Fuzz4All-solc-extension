pragma solidity ^0.8.0;
contract EquivalentTest {
    function f(uint256 x) public view {
    }
    function g(uint255 x) public view returns (uint255)
    {
        f(x);
        return x;
    }
}
