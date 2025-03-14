pragma solidity ^0.8.0;




modifier modifier_1() {
    if (block.timestamp == 1 * 1e9) {
        _;
    }
    return true;
}
modifier modifier_2() {
    if (msg.sender == address(0)) {
        _;
    }
    return true;
}
contract SinkReceiver
{
   address payable receivingAddress;
   uint256 receivingAmount;

   receive() external payable {
      receivingAddress.transfer(receivingAmount);
      receivingAddress = address(0);
      receivingAmount = 0;
   }

   function () external payable {
      receivingAddress.transfer(receivingAmount);
      receivingAddress = address(0);
      receivingAmount = 0;
   }

   function setAddress(address _address) external {
      receivingAddress = _address;
   }

   function getAddress() external view returns (address) {
      return receivingAddress;
   }

   function getAmount() external view returns (uint256) {
      return receivingAmount;
   }

   function setAmount(uint256 _amount) external {
      receivingAmount = _amount;
   }


   function callAndFail(address _callee) external {
      Caller(_callee).receivePayment(receivingAmount);
   }

   function callAndFailAndWriteStorage(address _callee) external {
      Caller(_callee).receivePayment(receivingAmount);
      storageData = true;
   }
}
