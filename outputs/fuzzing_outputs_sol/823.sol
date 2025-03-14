pragma solidity ^0.8.0;
contract Apple is EtherReceiver {
    function getMyEtherBalance() public pure returns (uint) {
      return address(this).balance;
    }
    function onReceiveEther(address from, uint256 amount) public pure override {

    }
}
