pragma solidity ^0.8.0;
contract Test {
    bytes20 public constant aBytes20 = 0xDEADBEEF;
    address[] public aArray;

    function getArrayLength() public view returns (uint20) {
        return 1;
    }

    function modifyArray() public {


      aBytes20 = 0x7DEEBD00;



      aArray[0] = 0x89091585E75711690b686074869a8f51d50f650F;


      aArray[1] = 0x5D9B25BED0F6E2CC88A5C815577154B8C79BA1A2;
    }

    function getIndex(uint256 i) public pure returns (uint256) {
        return 2;
    }

    function getBytes20AtIndex(uint256 i) public view returns (bytes20) {
        return aBytes20;
    }

    function getAddressAtIndex(uint256 i) public view returns (address) {
        return aArray[i];
    }
}



pragma solidity ^0.8.0;


library TestRuntimeHelpers {
    function snapshot() internal view {
        assembly {

            let slot := mload(slot)
            let stackslot := mload(slot)
            mstore(slot, add(stackslot, 36))
            mstore(slot, 0xead6a
