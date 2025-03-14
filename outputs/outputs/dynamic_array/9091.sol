pragma solidity ^0.8.0;
contract Addressable {
  uint256 addressableCounter;
  addressable internal a;





 function() external pure {
    addressableCounter++;

    require(message.data.length > 17);
    a.revert(addressableCounter);

  }

  modifier beforeAll() {
    console.log("A before all");
    _;
    console.log("A after all");
  }
}
contract UseDynamicArrays  {


  uint64 constant one = 1e6;
  uint64 constant two = 2e7;
  mapping(address => uint64[]) public userAddressArrays;


  function getAddressableArray(uint256 len) public returns (uint64[] memory) {
    uint64[] memory result = new uint64[](len);
    for (uint256 i = 0; i < len; i++) {
      addressable internal x = addressable(a);
