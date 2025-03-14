pragma solidity ^0.8.0;
contract Example17 {
  uint256 public value;
  function set(uint256 _value) public payable {
    value = _value;
  }
}

pragma solidity ^0.8.0;
contract Example17 {
  uint256 public value;
  function set(uint256 _value) public receive {
    value = _value;
  }
}

contract Example18 {
  uint256 public value;
  function setValue(uint256 _value) public {
    value = _value;
  }

  function setValueFunc() public payable {
    value = value + 1;
  }
}

contract Example19 {
  function foo() internal pure returns (uint256) {
    return 1;
  }

  function bar() public returns (uint256 answer) {
    answer = 2;
  }

  function baz() public {
    emit Log(foo(), bar());
  }
  event Log(uint256 foo, uint256 bar);

  function setCall(address _contract) public {
    Example19(_contract).setCall();
  }

  function setCallFunc() public returns (string memory result) {
    if (!address(this).isContract(_contract)) {
      result = "Error!!! The contract is not an ERC20 token contract".toString();
      return result;
    }

    Example18(_contract).setValue(1);
    result = "Set function executed successfully".toString();
    return result;
  }
}
