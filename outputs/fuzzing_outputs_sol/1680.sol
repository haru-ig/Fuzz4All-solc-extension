pragma solidity ^0.8.0;
contract ModifiedFallback {
  function receiveDataWithoutFallback() payable  public {}

  function receiveDataWithFallback() payable public {}
}

pragma solidity ^0.8.0;
contract AddFallback {
  function receiveDataWithoutFallback(uint256 x) public pure returns (uint256) {
    return x + 1;
  }

  function receiveDataWithFallback(uint256 x) public pure returns (uint256) {
    return x + 1;
  }
}


contract Fallback {
  event Failure(uint256);
  function receive(uint256) public payable {}

  function callDataPayable(bytes memory) public payable {}

  function receiveDataWithoutFallback() public pure {}

  function callDataPayableFromContract(uint256 num) public returns (uint256) {
    return num;
  }

  function receiveDataWithFallback() public payable returns (uint256) {}
}

contract FallbackCaller {
  function receive() payable {}
  function callDataPayable(bytes memory) public payable {


    (uint256 _value) = block.balance;
  }
}

contract Caller {
  function receive() public {}

  function callDataPayable(uint256 x) public returns (uint256) {
    (uint256 _value) = x;
  }

  function receiveDataWithoutFallback() public pure returns (uint256) {
    return (uint256(0x42));
  }

  function receiveDataWithFallback() public payable {

    emit Fallback.Failure(uint256(0x42));
  }
}
