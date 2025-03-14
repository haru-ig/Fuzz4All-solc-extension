pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    mapping (address => bool) public blackboxes2;
    event BlackboxCreated (address indexed owner);

    function getBlackboxes() public view returns (bool[] memory) {
        bytes memory _a = hex'ff';
        (uint len, uint[] memory) = hexString(_a);
        bool[] memory tempArray = new bool[](len);
        for (uint i = 0; i < len; ++i) {
            uint result = int16((uint)tempArray[i]);
            tempArray[i] = (result == (uint16)(result));
        }
        return tempArray;
    }

    function setBlackboxes(address _a) public {
        bytes memory _a_ = uint2(hexString(_a));

        (uint len_1, uint[] memory) = hexString(_a_);
        bool[] memory tempArray = new bool[](len_1);
        for (uint i = 0; i < len_1; ++i) {
            uint result = int16((uint16)tempArray[i]);
            tempArray[i] = (result == (uint)result);
        }
        blackboxes[msg.sender] = false;
        blackboxes2[msg.sender] = true;
    }

    function updateBlackboxes(address _bla) public view {
        bytes memory _bla_ = uint2(hex2(hex'ff')));
        address payable dest = address(uint16(uint(dest_)));

        (uint len_1, uint[] memory) = hexString(uint2(
