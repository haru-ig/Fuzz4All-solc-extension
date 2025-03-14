pragma solidity ^0.8.0;
contract Mutator21
{
    constructor(address _contract) {
      owner();
      address = _contract;
    }
    function owner() {
     deploy(_contract);
    }
    function deploy(address _contract) {
      address = _contract;
    }
}
pragma solidity ^0.8.0;
contract Mutator22
{
  constructor(address _contract) {
    deploy(_contract);
  }
  function deploy(address _contract) {
    address_ = _contract;
  }
}
```
```
./mutator-x7.sol
```
```
pragma solidity 0.8.0;

contract MutatorX1 {
  function foo() public {}
  function bar() public {}
}
```
