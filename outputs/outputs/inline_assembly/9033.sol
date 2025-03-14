pragma solidity ^0.8.0;
contract MutatedSolidity7
{
    function add(uint256 x) public { x += 6; }
    function mul(uint256 x) public { x *= 6; }
    function sub(uint256 x) public { x -= 6; }
}
contract MutatedSolidity8
{
    function add(x) public { x.+= 6; }
    function mul(x) public { x.*= 6; }
    function sub(x) public { x.-= 6; }
}
