pragma solidity ^0.8.0;
contract FallbackComplex {
  uint256[] internal _nonReturn;
  constructor(uint256[] memory initialValue) {
    _nonReturn = initialValue;
  }
  function nonReturnFallback() external payable {}
}
contract Test {
  function test() external payable {
    uint256[] memory initialValue = new uint256[](1);
    Complex(initialValue).nonReturnFallback(initialValue);
  }
}




pragma solidity 0.8.7;
contract Caller {
  Complex contractIn;
  uint addressIn;
  constructor(address _contractIn, uint _addressIn) {
    contractIn = Complex(address(_contractIn));
    addressIn = _addressIn;
  }

  function withFunction() external payable {
    contractIn.nonReturnFallback(contractIn.nonReturn());
  }

  function withFallback() external {
    contractIn.nonReturnFallback();
  }

  function withFallbackAndAddressIn() external {
    contractIn.nonReturnFallback(contractIn.nonReturn());
  }

  function withFallbackAndContractIn() external {
    contractIn.nonReturnFallback(contractIn.nonReturn());
  }

  function withFallbackAndTwoAddressIn() external {
    contractIn.nonReturnFallback(contractIn.nonReturn());
  }

  function withFallbackAndTwoContractIn() external {
    contractIn.nonReturnFallback(contractIn.nonReturn());
  }
}
