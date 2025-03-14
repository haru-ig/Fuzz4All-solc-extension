pragma solidity ^0.8.0;
contract Greet {
  address payable contract;
  function payable() {
    contract.transfer(msg.value);
  }
}
*/
