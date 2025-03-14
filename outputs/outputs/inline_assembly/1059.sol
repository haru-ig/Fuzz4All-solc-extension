pragma solidity ^0.8.0;
library MyLibrary {
  uint constant SOME_CONST = 8;
  uint constant SOME_CONST2 = 8;
  uint constant SOME_CONST3 = 8;
  function getSomeConst() external pure returns(uint) {
    return SOME_CONST;
  }
  function getSomeConst2() external pure returns(uint) {
    return SOME_CONST2;
  }
  function getSomeConst3() external pure returns(uint) {
    return SOME_CONST3;
  }
}
contract MyContract {
  uint public value;
  function setNewValue(uint somethingValue) public {
    value = somethingValue;
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}


pragma solidity ^0.8.0;

contract MyToken {
    constructor() public {

        balances["owner"] = 100;
    }

    function increaseSupply(uint amt) public {

        balances["minted"] += amt;
    }

    function burn(uint amt) public {

        require(amt <= balances["minted"], 'amount must be greater than 0');

        balances["minted"] -= amt;

        selfdestruct(msg.sender);
    }

    mapping(address => uint) public balances;
}


pragma solidity ^0.8.0;
contract MinterRole {
    address payable _msgSender;
    constructor () {
        require(msg.sender!= address(0), 'MinterRole: sender is the zero-address');
        _addMinter(msg.sender);
    }
    modifier onlyMinter() {
        require(isMinter(_msgSender), 'MinterRole: caller does not
