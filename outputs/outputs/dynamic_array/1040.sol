pragma solidity ^0.8.0;
interface IUsingCalldataArrays {
  function setUint256ArraysWithNullPointerForReason(uint256[] memory _uint256ArraysWithNullPointerForReason) public;
    function getUint256ArraysWithNullPointerForReason() public view returns (uint256[] memory _uint256ArraysWithNullPointerForReason);

    function setUint256ArraysWithNullPointer(uint256[][] memory _uint256ArraysWithNullPointers) public;
    function getUint256ArraysWithNullPointer() public view returns (uint256[][] memory _uint256ArraysWithNullPointers);
}


pragma solidity ^0.8.0;
contract UsingMemoryAllocation {

    using Address for address;
    function setAddressArrayWithNullPointerForReason(address[] memory _addressArrayWithNullPointers) public {
        emit SetAddressArrayWithNullPointerForReason(_addressArrayWithNullPointers);
    }
    function getAddressArrayWithNullPointerForReason() public view returns (address[] memory _addressArrayWithNullPointers) {
        return address(0);
    }
    function setAddressArrayWithNullPointer(address[][] memory _addressArrayWithNullPointers) public {
        emit SetAddressArrayWithNullPointer(_addressArrayWithNullPointers);
    }
    function getAddressArrayWithNullPointer() public view returns (address[][] memory _addressArrayWithNullPointers) {
        return address(0);
    }
}
