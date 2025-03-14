pragma solidity ^0.8.0;
contract NoDynamicArrays {
   address public toAdd;
   bytes16 public x;
   bytes7 public y;
   bytes32 public z;

   constructor() {
      toAdd = address(new Fabric());
   }

   function get_calldata(uint16 offset) public pure returns(bytes memory) {
      return abi.encodePacked(address(this), offset);
   }

   address calldata get_address(uint16 offset) public view returns (address) {
      require(offset < 250, "Error accessing bad data");

      return address(toAdd).calldata(get_calldata(offset));
   }
}
