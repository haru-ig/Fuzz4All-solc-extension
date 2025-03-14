pragma solidity ^0.8.0;
contract Caller
{
}

pragma solidity ^0.8.0;
contract Caller
{
  function execute() public payable { }
  fallback() public payable {
    execute();
    return;
  }
}
