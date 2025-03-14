pragma solidity ^0.8.0;
contract Mutation7 {
  function mutantFallback(uint256 _amount) public fallback (uint) {
    bool executed = false;
    assembly {
      stored := calldatacopy()
      executed := and(iscontract(stored), lt(stored, 0x60106014))
    }
    uint result;
    assembly {
      result := and(callvalue(), gt(sub(gas, gasleft()), 0))
    }
    if(result == 0) {
      executed = true;
    }
    uint _reverted = executed? 0 : revert(0);
    uint _returned = executed? revert(0) : _amount;
    return _returned;
  }
}
