pragma solidity ^0.8.0;
contract MutatedCaller {
  modifier onlyNonzero() {
    uint8 nonZeroUint8 = 1;
    require(msg.value > 0, "nonZeroRequired");
    _;
  }
  function mutatedCallWithoutEther() public onlyNonzero() returns (uint256 amount) {
    return address(this).balance;
  }
  fallback () external {}
  receive () external {}
}
contract Caller {
    function call() public {
      MutatedCaller.MutatedCaller(address(new MutatedCaller())).mutatedCallWithoutEther();
    }
}
