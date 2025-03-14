pragma solidity ^0.8.0;

contract contract5c is Interface59 {
  uint internal counter;

  function f() public returns (uint, bool){
      if (counter == 6) {
        revert("revert");
      }
      counter++;
      return (6, true);
  }
}
contract Test {

    function test1() public returns (uint) {
        Interface59 f;
        uint v;

        v = f.g();
    }

    function test2() public returns (uint, uint) {
        uint v;

        v, v = f.f();
    }

    function test3(uint x) public {
        Interface59 f;

        f.g();
        f.f();
        f.f(1, 2);
    }
}
