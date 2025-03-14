pragma solidity ^0.8.0;
contract SentryMutateCallerFallbackV2Test {
function test() public payable{
    _mutateCaller();
}
    receive() external payable {}
    function _mutateCaller() internal returns (bool){
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x0)
    }
        assembly{

        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x5a38a942)
    }
        return true;
    }
}

contract MutatorFallbackTest {

  function mutate(address _c) public
    nonReentrant
      override
    {
        SentryMutateCallerFallbackV2 caller = SentryMutateCallerFallbackV2(_c);
        caller.Mutate();
    }

    function mutateEthers(address _c) public
      nonReentrant
      override
        {
            _mutateEthers(_c);
        }
  receive() external payable {}

  function _mutateEthers(address _c) internal returns (bool) {
    SentryMutateCallerFallbackV2 caller = SentryMutateCallerFallbackV2(_c);

    return 0x0;
  }
}
