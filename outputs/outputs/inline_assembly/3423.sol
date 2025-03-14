pragma solidity ^0.8.0;
contract Mutability8 {
  address payable public payee;
  constructor () public payee(42) { }
}

pragma solidity ^0.8.0;
interface IMutability10
{
  uint getValue();
  function add (uint arg) external returns(uint);
  function callMutability10 (uint a, uint b, uint c) external returns(uint);
}
contract Mutability10 is IMutability10{
  uint public constant VALUE = 42;
  uint public constant ZERO = 0;
  uint constant ONE = 1;
  constructor () public { }
  function add (uint arg) public pure returns (uint) {
    return arg + VALUE;
  }
  function getValue() public view returns(uint) {
    return VALUE;
  }
  function callMutability10 (uint a, uint b, uint c) public view returns(uint) {
    return VALUE + add(a) + add(b) + add(c);
  }
}
