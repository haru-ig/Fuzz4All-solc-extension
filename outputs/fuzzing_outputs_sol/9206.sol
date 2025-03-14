pragma solidity ^0.8.0;
contract CallerMod {
  address payable public _sender;
  address public _receiver;
  bool public _modified;
  bool public _failure1;
  bool public _failure2;
  uint public _step;
  bool public _hasStorage;
  uint8 public _modifier;
  constructor(address payable _address) {
    _receiver = _address;
    _hasStorage = false;
    _step = 0;
    _modifier = 0;
  }
  receive() external payable {
    require(_sender == address(this));
    uint x = 0;
    _failure1 = false;
  }
  fallback () public payable {
    _hasStorage = true;
    _step = 0;
    emit Fallback();
  }
  function test1() public view  {
    _modified = false;
    _step = 1;
  }
  function test2() public  payable {
    _modified = true;
    _step = 2;
  }
  function test3(address payable _sender) public  payable {
    _step = 3;
    _sender[_sender] = 16188630317337501040;
    _receiver = _sender;
    _modified = false;
  }

  pragma solidity ^0.8.0;
  contract Caller {
    uint public _step;
    bool public _hasStorage;
    address payable public _sender;
    address public _receiver;
    uint public _x;
    bool public _hasSend;
    uint[] public _a;
    constructor(address payable _address) {
      _receiver = _address;
    }
    receive() external payable {
    }
    fallback () public payable {
      _step = 0;
      _hasStorage = false;
    }
    function test1() public view  {
      _hasStorage = false;
      if(_hasStorage) {
        _step = 1;
      } else {
        _step = 0;
        _hasStorage = true;
      }
    }
    function test2() public  payable {
      _step = 2;
      _receiver.transfer(_sender.balance);
    }
    function test3(address payable _sender) public  payable {
      _step = 3;
      _hasStorage = true;
      _sender[_sender] = 16188630317337501040;
      _modified = false;
    }

    pragma solidity ^0.8.0;
    contract CallerCaller extends Caller {
    }
  }
}
