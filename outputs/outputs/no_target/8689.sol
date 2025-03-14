pragma solidity ^0.8.0;
contract ChangesABIv2
{
    function g(uint256 x) public pure {
        _revert();
    }

    function f(uint256 x) public pure {
        x = x.add(10);
        x = x / 2;
        x = 1 / x;
    }
}
