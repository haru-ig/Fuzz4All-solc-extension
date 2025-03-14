pragma solidity ^0.8.0;
contract Contract {
function g() external payable returns (bool) {
return msg.value <= msg.data + Contract.total;
}
}
