pragma solidity ^0.8.0;
contract MyAddressableContract {
    address payable addr;
    constructor() {
        addr = payable(msg.sender);
    }
    function() public payable {
      require(msg.data.length > 0, "empty message");
      uint256 i = 0;
      while (msg.data[i]!= 46 && i < msg.data.length) {
        i++;

      }
      uint256 num = bytes2uInt(msg.data.slice(0, i + 1));
      require(uint256(i)!= num, "corrupt");
      msg.sender.transfer(msg.value + num);
    }
}
