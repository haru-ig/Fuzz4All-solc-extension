pragma solidity ^0.8.0;
contract MutatingFallback9 {
  uint16 internal a;
  mapping(bytes32 => mapping(address => uint16)) memory _functions;
  modifier onlyFallback {
    uint16 returnedId = _functions.length;
    _functions[returnedId][msg.sender] += 1;
    assert(a < 400 && _functions[returnedId][msg.sender] == 4);
    _;
  }
  constructor() {
    a = 300;
  }
  function mutate() public onlyFallback {
    a++;
    assert(a <= 400);
    _functions[a][msg.sender]++;
    assert(_functions[a][msg.sender] <= 4);
  }
  function callFunction() public {
    a = 300;
    mutate();
  }
}
