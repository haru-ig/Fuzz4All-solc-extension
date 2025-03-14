pragma solidity ^0.8.0;
contract Mutate {
  function m(uint256 x) public pure {
    x = k;
  }
}
contract E {
  function g() public pure {
    Mutate m;
    m.m(42);
  }
}
contract G {
  function g0() public pure {

    function f() public pure {
        function e() public pure {
            function d() public pure {

              E e;
              K k;
              e.g;
              k.m;
              f();
        }
        d();
    }
    f();
  }
}
