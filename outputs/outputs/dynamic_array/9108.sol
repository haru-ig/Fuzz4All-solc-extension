pragma solidity ^0.8.0;
interface IAddressable2 {
    function returnAddress(uint8 _value) external returns (address);
}

pragma solidity ^0.8.0;
interface IDynamicArray {
   function newSlot() external;
   function setSlot(uint256 slot, uint256 element) external;
   function readSlot(uint256 slot) external view returns(uint256);
    function length() external view returns (uint16);
}

contract Main {
    using IDynamicArray for uint256[];
    IDynamicArray.slot struct dummy;
    IDynamicArray a;
    uint256 dummy1;
    uint256 test;
    function foo() private pure {
        require(a.length() == 0, "a.length() not 0");
        a.setSlot(dummy.slotId, 1);
        a.setSlot(dummy.slotId+1, 2);
        a.setSlot(dummy.slotId+2, 3);
        a.revert(1);
        TestInterface test_test = (TestInterface(0x1));
        test_test.dummy(a.length(), a.readSlot(a.length()-1));
        uint8[] memory buffer = new uint8[](a.length());
        for (uint i = 0; i < a.length(); i++) {
            buffer[i] = a.readSlot(i);
        }
        require(buffer[a.length()-1] == 1, "Test fail: readSlot");
        for (uint i = a.length() - 2; i < a.length(); i++) {
            a.setSlot(i, a.readSlot(i));
        }
        require(a.readSlot(0).equals(1), "Invalid assign");
        address buffer2 = new address[](a.length());
        uint256[] memory buffer3 = new uint256[](2);
        for (uint i = 0; i < a.length(); i++) {
            buffer2[i] = a.readSlot(i);
            buffer3[i] = a.readSlot(i+2);
        }
        require((buffer2[1].toString()).equals(a.readSlot(1).toString()), "Invalid assign");
        require((buffer3[0].toString()).equals(a.readSlot(0).toString()), "Invalid assign");
        for (uint i = 0; i < a.length(); i++) {
            a.setSlot(i, a.readSlot(dummy.slotId
