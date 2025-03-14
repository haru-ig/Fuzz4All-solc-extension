pragma solidity ^0.8.0;

library ModifiableExample {

  function modifyContract(address modifiableExampleContract, uint gasPrice) public {
    modifiableExampleContract.call{value: gasPrice}(abi.encodeWithSelector(this.functWithoutFallback(), 1));
  }
}
