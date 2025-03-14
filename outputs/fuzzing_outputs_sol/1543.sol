pragma solidity ^0.8.0;
contract FallbackExample {
  contract Inner {
    function myFallback() public pure { revert(); }
  }

  function fallback() external {
    (address _innerAddress, bytes memory _data) = abi.encodeWithSelector(abi.decodeBytes4(keccak256("fallback"), "fallback", 4), address(new Inner()));
    (bool success, ) = _innerAddress.call{value: address(this).balance}("");
    require(success);
  }
}
