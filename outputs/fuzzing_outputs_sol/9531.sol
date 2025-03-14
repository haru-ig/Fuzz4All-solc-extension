pragma solidity ^0.8.0;
interface NewCaller {
  function bar() external;
}

contract Contract {

  uint256 constant private ETHER = 20000;

  mapping(address => uint256) private _balances;
  uint256 private _value;

  constructor() {
    _balances[msg.sender] += ETHER;
  }

  fallback() external { }

  receive () payable external {

    require(msg.value >= ETHER, "Contract received wrong Ether");
    _balances[msg.sender] -= msg.value;
  }



  function fallback() public { }


  receive() external payable {
    require(msg.value >= ETHER, "Contract received wrong Ether");
    _value -= msg.value;
  }

  function increase(uint256 amount) public returns(bool success) {
    _balances[msg.sender] += amount;
    return true;
  }

  function decrease(uint256 amount) public returns(bool success) {
    _balances[msg.sender] -= amount;
    return true;
  }

  function call(address contractAddress, bytes memory data) public view returns(bytes memory result) {

    assembly {

      contractAddress := mload(add(data, 0x20))
      result := call(gas(), contractAddress, add(data, 0x20), mload(data), 0, 0)
    }
  }

  function callValue(uint256 amount) public view returns(uint256) {

    return IERC20(address(this)).transfer(address(this), amount);
  }
}
