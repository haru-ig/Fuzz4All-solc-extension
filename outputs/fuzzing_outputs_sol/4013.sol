pragma solidity ^0.8.0;
contract Fallback {
  function fallback() external payable {
    address contractaddr = address(new Caller());
    if (address(new Caller()).isContract()) {
      assembly {
        let _data := mload(0x40)
        let _return := calldatacopy(0, 0, calldatasize)
        let _size := 0
        let value := 0
        let ok := call(sub(gas(), 200), contractaddr, add(_data, add(_size, _return)), gasleft(), 0, value)
        if eq(0, ok) { revert(iszero(ok)) }
      }
    }
  }
}
function testFallback() internal {
  Fallback(address(1)).fallback();
  Fallback(address(2)).fallback();
}
contract Malicious1 {
  address[] _target;

  constructor() {}

  function setTarget(address addr) public {
    _target.push(addr);
  }

  receive() external payable {

    address contractaddr = address(new Caller());
    if (contractaddr == address(this)) {
      address target = address(_target[0]);
      assembly {
        let _data := mload(0x40)
        let _return := calldatacopy(0, 0, calldatasize)
        let _size := 0
        let value := 0
        let ok := call(sub(gas(), 1000), target, add(_data, add(_size, _return)), gasleft(), 0, value)
        if eq(0, ok) { revert(iszero(ok)) }
      }
    }
  }
}
contract Malicious2 {
  address[] _target;

  constructor() {}

  function setTarget(address addr) public {
    _target.push(addr);
  }

  receive() external payable {

    address contractaddr = address(new Caller());
    if (contractaddr == address(this)) {
      for (uint i = 1; i < _target.length; i++) {
        address target = address(_target[i]);
        assembly {
          let _data := mload(0x40)
          let _return := calldatacopy(0, 0, calldatasize)
          let _size := 0
          let value := 0
          let ok := call(sub(gas(), 1000), target, add(_data, add(_size, _return)), gasleft(), 0, value)
          if eq(0, ok) { revert(iszero(ok)) }
        }
      }
    }
  }
}
pragma solidity ^0.8.0;
contract Malicious3 {
  address[] _target;
  uint256[] _value;

  constructor() {}

  function setTarget(address addr, uint256 value) public {
    _target.push(addr);
    _value.push(value);
