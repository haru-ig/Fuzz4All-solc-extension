pragma solidity ^0.8.0;
contract MutantFallback4 {
  function myFallback(uint256 _amount) public pure returns (uint256) {
    return _amount * 2;
  }
}
contract SimpleContract {
  address fallback;
  uint256 amount;

  function SimpleContract(uint256 _amount) {
    amount = _amount;
    fallback = 0x95b46E5e67618E5d5bF45f7d8D612ADe5D467c4E;
  }

  function sendEther(uint256 _amount) public {
    fallback.call{value: _amount}(abi.encodeWithSignature("myFallback(uint256)", amount));
  }

  function withdrawEther(address _receiver) public {
    address[] memory addresses = new address[](1);
    addresses[0] = address(_receiver);
    fallback.delegatecall(abi.encodeWithSignature("sendEther(uint256)", amount), addresses);
  }
}

contract MutantCaller {
  function myCall(uint256 _amount) public pure returns (uint256) {
    return 2*_amount;
  }
}
contract MutantCaller2 {
  function myCallEther() public view returns (uint256) {
    return 2*617;
  }
}
interface ISomething {
  function doStuff(address _recipient, uint256 _amount) external;
}
contract SimpleContractWithFallback {
  address fallback;
  uint256 amount;

  function SimpleContractWithFallback(uint256 _amount) {
    amount = _amount;
    fallback = address(MutantCaller2());
  }

  function sendEther(uint256 _amount) public {
    address recipient = 0x2739427354d8c672ba258c5C8962D79259BD1b0E;
    fallback.delegatecall{value: _amount}(abi.encodeWithSignature("doStuff(address,uint256)", recipient, amount));
  }

  function withdrawEther(address _recipient) public {
    address[] memory addresses = new address[](1);
    addresses[0] = _recipient;
    fallback.delegatecall{value: 6338}("");
  }
}
