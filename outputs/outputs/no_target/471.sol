pragma solidity ^0.8.0;
contract Semantic  {
    uint x_ = 0;
    function f(uint constant x) public pure returns (uint) { return x_ + x; }
    function f(uint _x) public pure returns (uint) { return f(x_ + _x); }
}

pragma solidity ^0.8.0;
contract Semantic  {
    uint x_ = 0;
    function f(uint constant x) public pure returns (uint) { return x_ + x; }
    function f(uint _x) public pure returns (uint) { return x_ = x_ + _x; }
}
