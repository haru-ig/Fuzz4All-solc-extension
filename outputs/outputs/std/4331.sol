pragma solidity ^0.8.0;


contract Memory {



    function GetLength() public pure returns (uint256)
    {
        uint256 storageLength = uint256(uint32(keccak256(bytes(abi.encodePacked("13" "")))));
        uint256 length;
        assembly { length := mload(80) }
        return length;
    }


    function ReadAddress(uint addressVar) public pure returns (uint)
    {
        return uint(uint32(keccak256(bytes(abi.encodePacked("13" ""))+abi.encodePacked(addressVar))));
    }
}
contract Mutator {
    function MutateAddress(uint addressVar, uint a) public returns (uint) {
      addressVar = Memory.ReadAddress(addressVar);
      return Memory.MutateAddress(addressVar, a);
    }
}
