pragma solidity ^0.8.0;

contract nonstatic
{
  function f2() public pure returns (bytes memory) {
        return "success";
    }

  function f1() external pure returns (bytes memory a) {
    return "failure";
  }

  function f() public payable pure returns (bytes memory) {

      return "success";
  }

}



contract Caller
{
  uint public a;

  function f() public payable returns (bytes memory)
    {
    a = 0xe55018;
    }
}
