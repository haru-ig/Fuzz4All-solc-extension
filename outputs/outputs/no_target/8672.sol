pragma solidity ^0.8.0;
contract PrevABIv4
{
    function foo(uint256 x) public pure returns (uint256) {
        return x + 1;
    }
    address addr = address(this);
    function set(uint256 x) public {
        addr.transfer(x.mul(2));
    }
}
contract NewABIv4 {
    function f(uint256 x) public pure returns (uint256) {
        uint256 a = x + 1;
        require(a > 0, " cannot divide by zero");
        return a;
    }
}
