pragma solidity ^0.8.0;
contract Caller
{
  function simple() public {
    call();
    call(65);
    call("string");
    call(true);
  }
  function call() public {

    (bool success, ) = address(this).call{value: msg.value}("");
    require(success, "Failed to send funds");
  }
  function call_two() public payable {

    (bool success, ) = address(this).call{value: msg.value}("");
    require(success, "Failed to send funds");

    address(this).transfer(address(this).balance);
  }
  function call_three() public {

    address(this).transfer{value: msg.value}(address(this));
  }
  function call_four() public {

    (bool success, ) = address(this).call{value: msg.value}(abi.encodeWithSignature(""));
    require(success, "Failed to send funds");
  }
  function call_five() public {

    (bool success, ) = address(this).call{value: msg.value}(
      abi.encodeWithSignature("", "")
    );
    require(success, "Failed to send funds");
  }
