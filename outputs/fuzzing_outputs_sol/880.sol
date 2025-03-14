pragma solidity ^0.8.0;
contract Caller {
address payable _payer;
bytes payable _data;
constructor(bytes memory data) {
_data = data;
}
fallback() public payable {
_payer.transfer(address(this).balance);
}
}
