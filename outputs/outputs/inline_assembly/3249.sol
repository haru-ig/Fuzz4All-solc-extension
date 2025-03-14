pragma solidity ^0.8.0;
contract Mutate3 {
  uint public _amount1;
  uint public _amount2;
  uint72 _amount3;
}


pragma solidity ^0.8.0;
contract Mutate5 {
  uint public _a;

  constructor() {
    _a = 1;
  }


  function a() public return (uint) {
    return _a;
  }
  uint public _b = 1;
  function b() public return (uint) {
    return _b;
  }


  function changeData() public {
    _a = 2;
  }
}
