pragma solidity ^0.8.0;
contract Caller {
  bytes public message;
  bytes public message2;
  function doSomething() public {
    message = abi.encodeWithSignature("()")
    message2 = abi.encodeWithSignature("()()")
  }
  function print() public view returns(string memory) {
    return string(abi.encodePacked(message));
  }
  function print2() public view returns(bytes memory) {
    return abi.encodePacked(message);
  }
  function print3() public view returns(bytes memory, string memory) {
    return abi.encodePacked(message, message);
  }
  function print4() public view returns(uint256, string memory, bytes memory) {
    return (lastValue, string(abi.encodePacked(message)), abi.encodePacked(message));
  }
  function print5() public view returns(uint256, uint256, string memory, bytes memory, uint32) {
    return (lastValue, firstValue, string(abi.encodePacked(message, message)), abi.encodePacked(message, message), address(this).balance / 2);
  }
}
