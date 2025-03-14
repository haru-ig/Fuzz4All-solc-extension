pragma solidity ^0.8.0;
contract MultisignerExample {
    address public owner;
    address[] public array;

    constructor () {
        owner = msg.sender;
        array = new address[](8);
        uint256 len = array.length;
        for (uint256 i = 0; i < len; i++) {
            array[i] = msg.sender;
        }
    }
    function getLength() public view returns (uint256) {
        return array.length;
    }
    function verify(uint256 idx, bytes32 funcId, bool isVerified) public {
    uint256 len = array.length;
    require(0 < len, "Empty list");
    require(idx < len, "Index out of range");

    (bool isEqual, uint8 lenBytes, bytes32[1] memory args) = _verify(array);
    require(isEqual, "Bad function ID");
    bytes32 f = args[0];

    bool sameName = funcId == f;
    bool sameType = type(f) == type(isVerified);

    address[8] memory tempArray = new address[](8);
    for (uint256 i = 0; i < len; i++) {
        tempArray[i] = array[i];
    }
    bytes32[1] memory tempFuncID = [funcId];
    bytes32 memory buf = abi.encode(isVerified, tempFuncID, tempArray);
    require(!(sameName && sameType? (bool)abi.decode(buf, (bool)) : f!= buf[0]), "Check failed");
    }
    function _verify(address[8] memory _array) public view returns (bool, uint8, bytes32[1]) {
        uint8 lenBytes = 0;
        bytes32[1] memory buf = new bytes32[](8);
        for (uint256 i = 0; i < 7; i++) {
            lenBytes++;
            buf[i] = keccak256(abi.encodePacked(_array[i]));
        }
        bytes32 key = keccak256(abi.encodePacked(lenBytes, buf));
        for (uint256 i = 7; i < 8; i++) {
            if (keccak256(abi.encodePacked(_array[i]))!= key) {
                return (false, 0, buf);
            }
        }
        return (true, lenBytes, buf);
    }
    function print(uint256 idx) public view returns (address) {
        address addressReturned = array[idx];
        return addressReturned;
    }
    function sort(uint256 idx) public {
        address temp = array[idx];
        array[idx] = array[5];
        array[5] = temp;
        sort(idx + 1);
    }
    receive() external payable {}
}
address array;
address[] internal addressArray;
uint256 arrayLength;
constructor () {
    addressArray = new address[](18);
    addressArray = new address[](10);
} /* Please
