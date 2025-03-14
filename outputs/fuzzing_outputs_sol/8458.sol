pragma solidity ^0.8.0;
contract CallerExample2 {
  function callerReturnBool() public pure returns(bool) {
    uint _randomValue = 132121;
    return (_randomValue < 20);
  }
}





pragma solidity ^0.8.0;
contract CallerExample3 {
  bool public myBool = false;
  constructor () {
    require(msg.value >= 50000000000);
  }
  function payableCallerReturnBool() public pure returns(bool) {
    return true;
  }
  function pureCallerReturnBool() public pure returns(bool) {
    return true;
  }
  function payableCallerReturnBool2() public pure returns(bool) {
    require(myBool);
    return true;
  }
}
