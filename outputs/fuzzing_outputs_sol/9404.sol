pragma solidity ^0.8.0;
contract MutatingFallback7 {
  uint internal a;
  modifier onlyFallback {
    assert(a >= 300);
    _;
  }
  constructor() {
    a = 300;
  }
  function mutate() public onlyFallback {
    a = 380;
    assert(a < 400);
  }
}




pragma solidity ^0.8.0;





contract Fallback {

  function() payable public {}
}





pragma solidity ^0.8.0;
contract MutatingFallback {
  uint32 data1;
  modifier modifier3() {
    _;
    data1 += 20;
  }
  function useFunction() public payable modifier modifier3() {
    _;
  }
  function setFunc() public modifier modifier3() {
    _;
    data1 = 30;
  }
}





pragma solidity ^0.8.0;
contract MutatingFallback1 {
  uint32 data1;
  modifier modifier3() {
    _;
    data1 += 20;
  }
  function useFunction() public payable modifier modifier3() {
    _;
  }
  function setFunc() public modifier modifier3() {
    _;
    data1 = 30;
  }
}
