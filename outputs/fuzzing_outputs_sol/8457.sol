pragma solidity ^0.8.0;
contract CallerExample2 {
  function callerReturnEnum() public pure returns(CallerExample.Result) {
    return CallerExample.Result.SUCCESS;
  }
}
