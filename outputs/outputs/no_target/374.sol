pragma solidity ^0.8.0;
mapping(uint => uint) _balances =
  mapping(uint => uint);
contract Semantic3Fixed1 {
    function balance3(uint256 _val) public pure returns (uint256 x) {
        uint256 x = 42;
        uint256 y = x + 1;
        uint256 z = 8;
        _balances[y] = 1;
    }
}
