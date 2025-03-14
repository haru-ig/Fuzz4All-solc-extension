pragma solidity ^0.8.0;
interface INameable {
  function revert(string memory _name) external;
}
contract Base {
  constructor(string memory _name) public { }
  function revert(string memory _name) public {
    INameable (address(this)).revert(_name);
  }
}
contract Dish {
  string public name;
  Base public base = Base('Dish');
}

pragma solidity ^0.8.0;
contract MyApp {

  Dish public dish;
  constructor(string memory _name) public {
    dish = new Dish(_name);
  }


  function assertRevert(uint8 _value) {
    require(_value == 1);
    IAddressable (address(this)).revert(_value);
  }

  function testAssertRevert() public {
    dish.assertRevert(1);
  }
  function setName(string memory _name) public {
    dish.base.revert(_name);
  }
}
