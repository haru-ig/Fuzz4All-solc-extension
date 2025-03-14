pragma solidity ^0.8.0;
contract Mutator5
{
    uint public A;
    function write(uint _A) public  {
      A = _A;
    }
    function increase() public  {
      A = A + A + A;
    }
    function decrease() public  {
      A = A - A - A;
    }
    function increase1() public  {
      A = A + 1 + A + A + A + A + A + A + A;
    }
    function decrease1() public  {
      A = A - A - 1 + A - 1 - A - 1 - A - 1 - A - A;
    }
    function add2() public  {
      A = A + 2 - A;
    }
}
