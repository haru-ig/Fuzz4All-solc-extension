pragma solidity ^0.8.0;
contract Program
{
  uint public data;
  function fallback() public { data = 50; }
}


pragma solidity ^0.8.0;



contract FallbackError is Error {   }
contract Program
{
  function call() public {
    FallbackError.defaultError();
    FallbackError(data);
  }
}

pragma solidity ^0.8.0;
contract Program
{
  uint public errorValue;

  function defaultRevert() public { errorValue = 5; }
  function defaultError() public { errorValue = data; program.fail(data); }
  function fail(uint _errorCode) public {revert(_errorCode); }
}
contract Mutation
{
  function mutation() public {
    program.defaultRevert();
  }
}<fim_middle>
contract MutatedProgram
{
  uint public data;
  function mutation() public {
    program.mutate();
    program.fail(data);
  }
}
contract Caller
{
  address public caller;
  function call() public {
    address caller_ = msg.sender;
    Program(caller_).call();
  }
}
