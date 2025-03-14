pragma solidity ^0.8.0;
contract SemanticMutation20
{
    uint public x = 100;
    function f(uint _c) public pure returns (uint256) { return _c + x; }
    function g(uint _c) public pure returns (uint256) { return _c-x; }
    function h(uint _c) public pure returns (uint256) { return _c / x; }
    function i(uint _c) public pure returns (uint256) { return _c * x; }
    function j(uint _c) public pure returns (uint256) { return x % _c; }
}
