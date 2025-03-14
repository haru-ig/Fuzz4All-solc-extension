pragma solidity ^0.8.0;
contract Array {
    address public constant ARRAY_ADDRESS = msg.sender;
    uint[] storage testArray = new uint[](2);

    mapping (uint => uint)  public mapArray;
    mapping (uint => address) public mapToAddress;
    uint public length = 0;

    function addElement() public {
        testArray.push(1);
        length++;
        mapArray[length] = 1;
        mapToAddress[1] = msg.sender;
    }

    function getArray() public view returns (uint[]) {
        return (testArray);
    }

    function getLength() public view returns (uint) {
        return length;
    }

    function getElementAddress(uint element) public view returns (address) {
        require(element < length);
        return mapToAddress[testArray[element]];
    }
    function length() public view returns (uint) {
        return uint(length);
    }

    function getMax(uint[] memory a) public view returns (uint) {
        uint maximumValue = a[0];
        for (uint i=1; i<length; i++) {
            if (a[i] > a[maximumValue]) {
                maximumValue = i;
            }
        }
        return maximumValue;
    }
}

pragma solidity ^0.8.0;
contract ArrayTest {
    uint public constant NUMBER = 1;
    bytes32 constant TEST = hex"9223c301";
    address public constant OWNER = 0x00000000000000000000000000000000000000000;
    uint public constant NUMBER_OF_DIGITS = NUMBER - 19;
