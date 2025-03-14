pragma solidity ^0.8.0;
contract D {


    function maker() public pure view returns (bool) { return true; }
}
contract All {
    function maker() public pure view returns (bool) { return true; }
}

pragma solidity ^0.8.0;
contract A {
  function a1() public view returns (bool) {
    x;
    return x;
  }
}
contract B {
  function b1() public view returns (bool) {
    A a;
    return a.a1();
   x;
    return x;
  }
}
contract C {
  function c1() public view returns (bool) {
   A a;
    return a.a1();
   if (D.maker()) {
   A a1;
        return a1.a1();
        return true;
      }
    return true;
  }
}
contract D is A
{
    function a1() public view returns (bool) {
    return true;
  }
}

contract E{
  function e1()}
}
contract Test {
  function test1() public returns (bool) {
    B b;
    return b.b1();
    E e;
    return true;
  }
}
