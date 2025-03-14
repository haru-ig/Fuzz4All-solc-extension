pragma solidity ^0.8.0;
contract Equivalent_contract14_new_old {
  uint constant constant1 = 2;
  uint constant constant2 = 100;
  uint x = 10;
  uint y = 18;

  constructor() {
    x = constant1;
    y = constant2;
  }

  function incrementX_new_old() public {
    x += 1;
  }

  function decrementX_new_old() public {
    x -= 1;
  }

  function decrementY_new_old() public {
    y -= 1;
  }
}
contract C {
    function test_constructor1() public pure {
        require(Equivalent_contract13_new_old.constant1 == 2);
        Equivalent_contract13_new_old.decrementX_new_old();
        require(Equivalent_contract13_new_old.constant1 == 1);
        Equivalent_contract13_new_old.incrementX_new_old();
        require( equivalent_contract13_new_old.constant1 == 3);
        Equivalent_contract13_new_old.decrementX_new_old();
        require(Equivalent_contract13_new_old.constant1 == 2);
        Equivalent_contract13_new_old.decrementY_new_old();
        require(Equivalent_contract13_new_old.constant1 == 1);
    }

    function test_constructor2() public pure {
        require(Equivalent_contract14_new_old.constant1 == 2);
        Equivalent_contract14_new_old.decrementX_new_old();
        require(Equivalent_contract14_new_old.constant1 == 1);
        Equivalent_contract14_new_old.incrementX_new_old();
        require( equivalent_contract14_new_old.constant1 == 3);
        Equivalent_contract14_new_old.decrementX_new_old();
        require(Equivalent_contract14_new_old.constant1 == 2);
        Equivalent_contract14_new_old.decrementY_new_old();
        require(Equivalent_contract14_new_old.constant1 == 1);
    }

    function test_constructor3() public pure {
        require(Equivalent_contract15_new_old.constant1 == 2);
        Equivalent_contract15_new_old.decrementX_new_old();
        require(Equivalent_contract15_new_old.constant1 == 1);
        Equivalent_contract15_new_old.incrementX_new_old();
        require( equivalent_contract1
