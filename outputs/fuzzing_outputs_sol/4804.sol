pragma solidity ^0.8.0;
contract FallbackFunction {
    address payable receiver;
    constructor() {
   receiver = msg.sender; }
    function setReceiver(address payable val) public {
       receiver = val;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address payable receiver;
    constructor() {
  receiver = msg.sender; }
    function callReceiver() public returns (uint a) {
      receiver.transfer(1 ether);
      return uint(uint(uint(uint(uint256(uint(uint256(uint256(uint256(uint256(uint256(uint256((uint256(uint256(uint256(uint256((uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint256(uint64(uint128(uint64(uint64(uint456)))))))))))))))))))):uint128):uint456):uint128):uint64):uint64)(uint64):uint32(:uint76))))):uint8,uint8,uint8)(uint64,uint64,uint32,uint32,uint64,uint64,uint64,uint64,uint32,uint32,uint32,uint64,uint64)): uint128){
      a += 1;
}
}
