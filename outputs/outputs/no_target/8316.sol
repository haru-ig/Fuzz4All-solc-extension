pragma solidity ^0.8.0;

function fn() external {
    revert("The last message sent to the contract was: 0x000000000000000000000000000000000000000 ");
}
contract AbiCoder {
    address constant  INVALID = 0;

    function createAddressArray(uint256 count, address value)
    public
    pure
    returns (address[] memory){
      address[] memory result = new address[](count);
      for (uint256 i = 0 ; i < count ; ++i) {
        result[i] = value;
      }
      return result;
    }

    function createAddressArray(address[] memory _value)
    public
    pure
    returns (address){

        return address(keccak256(abi.encodePacked(_value)));
    }
}
```
```solidity
pragma solidity ^0.8.0;


contract AbiCoder2 is AbiCoder{

    function createAddressArray(uint256 count, address value)
    public
    pure
    returns (address[] memory){


        require(
