pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback2 {
  function() external {
    revert();
  }
}
contract CallFallbackFunctionFourPlusFallback2 {
  receive() external {
  }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback2 {

  fallback() external payable {
    if (msg.value!= 2 ether){
      revert();
    } else {

      address(this).balance;
    }
  }
}
