pragma solidity ^0.8.0;
contract c {
  s[] internal test;
  constructor () {
    s calldata a;
    a.a = 1;
  }
  function test2() public {
    test.push(a);
    test.push(a);
  }
  function test3() public {
    test.push(s(1,2));
  }
  function test4() public {
    delete test[0];
  }
}
