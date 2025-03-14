pragma solidity ^0.8.0;
contract Equivalent
{
  function modifiedSendEther(uint x, address addr) public { }
}

contract Caller
{
  struct State {
    object dummy;
    uint y;
  }

  function modifiedCallEtherAndStore(uint x, address addr) public {
    State storage xState = state;
    state.y = 1;
    uint y = xState.y + x;
    xState.dummy.transferAll(xState.y);
    xState.dummy.transferAll(y);
  }


  Equivalent public equivalent;
  State storage state;
  function Caller() public {
    equivalent = new Equivalent();
  }
}
