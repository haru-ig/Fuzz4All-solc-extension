pragma solidity ^0.8.0;
contract Array {
    uint[][] public arrayStore;
    constructor() {
        arrayStore.push([[1,2,3], [3, 2, 3], [2, 3, 1]]);
    }
    function get(uint256 i) public view returns (uint256){
        return arrayStore[i];
    }
    function set(uint256 arrayIndex, uint256 rowIndex, uint256 value) public {
        arrayStore[arrayIndex][rowIndex] = value;
    }
}
pragma solidity ^0.8.0;
contract Mutate {
    Array.sol public arr;
    function getArray(uint256 index) public view returns (uint256[]) {
        return arr.get(index);
    }
    function pushArray(uint256 value) public {
        uint256[] memory v = new uint[](1);
        v. push(value);
        arr.set(0, 0, value);
    }
}

pragma solidity ^0.8.0;
contract Read {
    Array.sol public arr;
    struct TextWriter {
        uint8 isFirstRow;
        uint256 numberOfColumns;
        address[] addresses;
        bytes[] text;
    }
    TextWriter public textFile;
    constructor() public {
        textFile.isFirstRow = 0;
        textFile.numberOfColumns = 4;
        textFile.addresses.push(msg.sender);
        textFile.addresses.push(msg.sender);
        textFile.addresses.push(msg.sender);
        textFile.addresses.push(msg.sender);
        textFile.text.push("Hello there.");
        textFile.text.push("Hi again.");
        textFile.text.push("Goodbye!");
        textFile.text.push("Hello there again");
    }
    function openFile(uint8 _isFirstRow, uint256 _numberOfColumns) public {
        textFile.isFirstRow = _isFirstRow;
        textFile.numberOfColumns = _numberOfColumns;
    }
    function readText() public {
        address[] memory readers = new address[](textFile.numberOfColumns);
        bytes[] memory contents = new bytes[](textFile.numberOfColumns);
        byte[1] memory isFirstRow;
        bytes memory readLine;
        uint counter;
        for(uint256 i = 0; i < textFile.numberOfColumns;i++){
