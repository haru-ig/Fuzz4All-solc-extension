pragma solidity ^0.8.0;
contract Mutability7 {
  uint public constant ZERO = 0;
  uint constant _ONE = 1;
  uint value;
  constructor () public {
    value = ZERO;
    setValue(_ONE);
  }
  function setValue (uint _value) public {
    value += _value;
  }
  function call () public {
    setValue(_ONE + 1);
  }
}




address[] memory addresses = new address[](3);

function add_address(uint8 _value) public returns (uint8)
{
  addresses[address(this).balance] = address(this);
  return _value;
}

function get_contract_addresses () public {
  for (uint256 i = 0; i < 3; i++)
    require(addresses[i]!= 0);
}

function main() public {
  Mutability7 mutability7 = Mutability7(add_address(_ONE));
  uint256 initial_balance = add_address(_ONE).balance;

  require(initial_balance == mutability7.getValue().add(ONE).div(_TWO));
  require(mutability7.getValue().add(ONE).div(_TWO).add(ONE) == add_address(_TWO));
  require(mutability7.getValue() == initial_balance.add(_ONE).sub(_ONE));

  mutability7.call();
  mutability7.setValue(ZERO);

  require(initial_balance == add_address(_ONE).balance);

  require(mutability7.getValue() == initial_balance.add(_ONE).sub(_ONE));
}




contract Mutability8 {
  uint8 constant _ONE = 1;
  address[] memory addresses = new address[](3);
  constructor () public {
    addresses[address(this).balance] = address(this);
  }
  function setValue (uint8 _value) public {
    addresses[address(this).balance] = address(this);
    addresses[address(this).balance].transfer(_value);
  }
  function
