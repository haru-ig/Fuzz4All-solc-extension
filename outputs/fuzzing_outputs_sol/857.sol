pragma solidity ^0.8.0;
contract Original {
  address public fallbackFunc;
  uint8 x;

  function original() public {
    fallbackFunc = address(this);
    x = 2;
  }
  function simpleCall(address _target, uint256 _x, bytes memory _data) public payable {
    if (transaction.origin!= _target) {
      fallbackFunc.call{value: msg.value}(_data);
    }
    x = _x;
  }
  function call(address _target, uint256 _x, bytes memory _data) public {
    _call(_target, _x, _data, fallbackFunc);
  }
  function _call(address _target, uint256 _x, bytes memory _data, address _func_) private {
    if (_func_.isContract()) {
      _target.call{value: msg.value}(_data);
    } else {
      _func_(msg.sender, _x, _data);
    }
  }
}

pragma solidity ^0.8.0;
contract Mutated {
  address payable public fallbackFunc;

  function mutated() public {
    fallbackFunc = address(this);
  }
  function simpleCall(address _target, uint8 _x) public payable {
    if (transaction.origin!= _target && msg.value > 0) {
      fallbackFunc.call{value: msg.value}(_x);
    }
  }
  function call(address _target) public payable {
    address func = address(this).balance > 0? fallbackFunc : fallbackFunc.call(uint256(-1));
    func(msg.sender);
  }
  function _mutated(address _target, uint8 _x) private {
    (uint256[] memory _bytes) = abi.decode(_x, (uint8[6]));
    fallbackFunc(msg.sender, _bytes);
  }
}
