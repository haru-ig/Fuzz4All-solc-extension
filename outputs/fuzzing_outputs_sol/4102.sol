pragma solidity ^0.8.0;
contract NoFallback {
  receive() external payable {
    address _addr = msg.sender;
    bytes memory _data = abi.encodeWithSignature("callme(bytes)", bytes("data"));
    assembly {



      storage[256] = _addr;
      dataStorage[100] := add(_data, 20)
    }
  }
}

pragma solidity ^0.8.0;

contract CallReceive {
  receive() external payable {
    address _addr = msg.sender;
    bytes memory _data = abi.encodeWithSignature("callme(bytes)", bytes("data"));
    this.contract()
    assembly {



      storage[256] = _addr;
      dataStorage[100] := add(_data, 20)
    }
  }
}

pragma solidity ^0.8.0;
contract FallbackBug {
  mapping(uint => address) addressStorage;
  receive() external payable {
    bytes memory _data = abi.encodeWithSignature("fallback()");
    address storage _func = addressStorage[uint(0)];
    assembly {
      _func := _func.add(20)
    }
  }

  function callme(bytes memory _data) public {
    addressStorage[uint(1)] = msg.sender;
    _data = abi.encodeWithSignature("fallback()", _data);
  }
}
