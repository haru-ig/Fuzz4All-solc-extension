pragma solidity ^0.8.0;
contract Semantic0014 {
    bool public x = false;
    function f(uint128 y) public view returns (uint256)
    {
        return y >= 2500000000000 ||
          (((x)? 1 : 0) +
           (y >= 3000000000000000000000000000000000)?
               (500000000000 + y * (y + 5)) : 0);
    }
    function set(uint256 z) public view returns (uint256)
    {
        x = z > 100000000000000;
        return 42;
    }
    function changeX() public { x = true; }
}
