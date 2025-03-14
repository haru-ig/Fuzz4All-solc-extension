pragma solidity ^0.8.0;
contract Test3b is I3b {}

contract Test08b {
  function test3b() public pure {

    I3b i3b = Test3b(address(0));


    I3b[] memory array3b = new I3b[](1);
    I3b array3b2 = I3b(address(0));
  }
}
