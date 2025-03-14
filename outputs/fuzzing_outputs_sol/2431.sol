pragma solidity ^0.8.0;
contract Caller2 {
  function pay() public payable returns (address payable) {
    address payable a = new Caller3().pay();
    return a;
  }
}

function main() {

}
