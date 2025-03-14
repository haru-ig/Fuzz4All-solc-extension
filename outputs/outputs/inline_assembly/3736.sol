pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract SemanticallyEquivalent6Optimized {
  constructor() {
    mapping(address => int) internal _state;
    _state.push(100);
  }
  function s() view public returns (address) {
    address[] calldata myAddress = new address[](3);
    myAddress[0] = msg.sender;
    _state.push(100);
    address _me = myAddress[1];
    if (_me == msg.sender || _me == addresses(1)) {
      address myContract;
      myContract = _me;
      if (0 < _state.length && int(_state[_state.length - 1]) == 0) {
        myContract = _me;
      }
      return myContract;
    }
    return msg.sender;
  }
  uint256 _i = 2;
  uint256 constant constantValue = 1500;
}
