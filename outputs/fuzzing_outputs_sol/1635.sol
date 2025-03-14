pragma solidity ^0.8.0;
contract D {
  fallback() external payable {}
}
contract PassingData {
  receive() external payable {data: "hi!"};
}
contract PassingData2 {
  receive() external payable {data: "hi"};
}
contract PassingData3 {
  receive() external payable { data: "hi"};
}
contract PassingAddress {
  receive() external payable {calldata: "hi!"};
}
contract PassingAddress2 {
  receive() external payable {calldata: "hi"};
}
contract PassingAddress3 {
  receive() external payable {calldata: "hi"};
}
