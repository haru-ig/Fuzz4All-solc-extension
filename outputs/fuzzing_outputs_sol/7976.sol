pragma solidity ^0.8.0;
contract Caller
{
  function callerCall() public pure returns (bool b) {

    b = true;
    address a = address(0x7181F48e88A644E0E335590C70e69431F5983Ae1);
    a.call{ value: 1e18 }("");
  }
}

pragma solidity ^0.8.0;

contract Greeter
{
  address payable public contractAddress;


  fallback() external payable {
    contractAddress.transfer(msg.value);
  }
}
