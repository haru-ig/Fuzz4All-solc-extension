pragma solidity ^0.8.0;
contract LotteryWithStorageArrayAccess {
    mapping(uint256 => Point[][][]) internal _arrayAddressesInternal;
    mapping(uint256 => Point[][][]) internal _arrayAddressesExternal;
    function getArrayAddressesExternal(uint256 index) public view returns(Point[][][] memory){
        return _arrayAddressesExternal[index];
    }
    bytes32 public key = "42";
}
