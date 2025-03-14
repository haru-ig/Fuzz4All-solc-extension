pragma solidity ^0.8.0;
contract M2 {
  event E(uint id, address addr, uint amount);

  uint constant value = 5;
  address public contract2;
  uint public balance2;

  fallback() external payable payable {
    emit E(value + balance2, msg.sender, balance2);
    balance2 -= value;
  }
}

pragma solidity ^0.8.0;
contract M3 {
  event E(uint id, address addr, uint amount);

  uint constant value = 5;
  uint public balance;
  uint public internalFunction1;
  uint public privateFunction1;

  fallback() external payable payable {
    internalFunction1++;
    privateFunction1++;
  }

  function() external payable payable {
    internalFunction1--;
    privateFunction1--;
  }
}

pragma solidity ^0.8.0;
contract Massembly {
  uint constant value = 5;
  uint public counter;

  fallback() external payable {
    assembly {
      counter := add(counter, value)
      counter := sub(counter, sub(zero, value))
      counter := mul(counter, value)
      counter := div(counter, value)
      counter := and(counter, sub(zero, value))
      counter := or(counter, value)
      counter := xor(counter, zero)
      counter := shl(counter, value)
      counter := sshr(counter, value)
    }
  }
}
