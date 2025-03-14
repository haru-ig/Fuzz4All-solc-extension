pragma solidity ^0.8.0;
contract FallbackMutatedCaller {
  function mutatedCallWithEther() public payable {
    uint256 amount = address(this).balance;
  }
  fallback () external payable {
    uint256 amount = transfer();
  }
  receive () external payable {
    uint256 amount = transfer();
  }

  function transfer() public returns (uint256) {
    _setStorageAt(msg.sender, msg.sender, 0, 0);
    return getStorageAt(msg.sender, 0);
  }

  function _setStorageAt(address owner, uint256 key, uint256 w2, uint256 w1) private {
    address to;
    assembly {
      to := mload(add(20, key))
    }
    require(msg.sender == to || msg.sender == owner || msg.sender == w1 || msg.sender == w2, "Invalid transfer address");
    uint256 toKey = getStorageAt(to, key) + w1;
    uint256 fromKey = getStorageAt(msg.sender, key);
    putStorageAt(to, toKey, 0, 0);
    putStorageAt(msg.sender, fromKey, w2, w1);
  }

  function getStorageAt(address owner, uint256 key) public view returns (uint256) {
    uint256 value;
    assembly {
      value := mload(add(1, key))
    }
    return value;
  }

  function putStorageAt(address owner, uint256 key, uint256 w2, uint256 w1) public {
    uint256 fromKey = getStorageAt(owner, key);
    uint256 fromW2 = getStorageAt(owner, key+1);
    uint256 toKey = getStorageAt(msg.sender, key+2);
    uint256 toW2 = getStorageAt(msg.sender, key);
    require(fromKey == 0 && toKey == 0 && fromW2 == 0 && toW2 == 0, "Invalid storage value");
    uint256 newValue = w1 + w2;
    uint256 newValue2 = (newValue+2) / 3;
    putStorageAt(msg.sender, key, newValue, newValue2);
    assembly {
      mstore(add(20, key), newValue2)
    }
    if (msg.sender!= address(this) && msg.sender!= owner) {
      msg.sender.transfer(newValue);
    }
  }
}
