pragma solidity ^0.8.0;
contract MyContract {
  uint public value = 8;
  modifier setNewValue(uint somethingValue) {
    value = somethingValue + 1;
    _
  }
  function retrieveNewValue() public view returns(uint) {
    uint something = value;
    value = something + 1;
    return value;
  }
}


pragma solidity ^0.8.0;
contract Tests {
  uint public constant value = 8;
  constructor() public {
  }
  function retrieveNewValue() public view returns(uint) {
    uint something = value;
    value = something + 1;
    return value;
  }

  function runTests() public view returns(uint, uint) {
    uint aValue = retrieveNewValue();
    uint bValue = retrieveNewValue();
    uint cValue = retrieveNewValue();
    assertEq(aValue, bValue);
    assertEq(cValue, 0);
    return (aValue, bValue);
  }
}


pragma solidity ^0.8.0;
contract Tests {
  uint public constant value = 8;
  constructor() public {
  }
  function retrieveNewValue() public view returns(uint) {
    uint something = value;
    value = something + 1;
    return value;
  }

  function runTests() public view returns(uint, uint) {
    uint aValue = retrieveNewValue();
    uint bValue = retrieveNewValue();
    uint cValue = retrieveNewValue();
    aValue = retrieveNewValue();
    assertEq(aValue, bValue);
    aValue = retrieveNewValue();
    return (aValue, bValue);
  }
}

pragma solidity ^0.8.0;
contract Tests {
  uint public constant value = 8;
  constructor() public {
  }
  function retrieveNewValue() public view returns(uint) {
    uint something = value;
    value = something + 1;
    return value;
  }

  function runTests() public view returns(uint, uint) {
    uint aValue = retrieveNewValue();
    uint bValue = retrieveNewValue();
    uint cValue = retrieveNewValue();
    assertEq(aValue, bValue);
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
    aValue = retrieveNewValue();
