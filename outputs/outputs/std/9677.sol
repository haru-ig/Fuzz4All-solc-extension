pragma solidity ^0.8.0;
interface Address {
      function isContract() public view returns (bool);
      function sendValue(address payable value) returns (bool);
     function functionCall(address target, bytes memory data) returns (bytes memory);
      function revert(bytes memory data) returns (bytes memory);
      function returnData(bytes memory data) returns (bytes memory);
      event Log();
      function callback(uint256 a);
}
