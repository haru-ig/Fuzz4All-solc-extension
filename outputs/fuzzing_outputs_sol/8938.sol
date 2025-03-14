pragma solidity ^0.8.0;
contract FallbackContract {
  function myMethod(contract C1) public payable {
    C1.myMethod();
  }
}
contract Caller {
  address contractAddress;
  constructor() public {
    contractAddress = address(new FallbackContract);
  }
  fallback() external payable {
    CallContractWithFallbackExample test;
    bool isSuccess = test.callContractWithFallback.value(address(this).balance)
                            (contractAddress, abi.encodePacked(0x00, 0x01));
    require(isSuccess, "Fallback function is not set");
  }
  fallback(bool a) external payable {

    bytes memory data = abi.encodePacked(0x02);
    CallContractWithFallbackExample test;
    bool isSuccess = test.callContractWithFallback2.value(address(this).balance)
                            (contractAddress, contractAddress, data);
    require(isSuccess, "Fallback function is not set");


    CallContractWithFallbackExample test2;
    isSuccess = test2.callContractWithFallback.value(address(this).balance)(
                      contractAddress, abi.encodePacked(0x01));
    require(isSuccess, "Fallback function is not set");
  }
}
