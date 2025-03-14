pragma solidity ^0.8.0;
contract EthStorage {
    uint8 private constant ZERO = 0;
    uint8 private constant MAX_BYTES = 32;
    mapping (uint256 => bytes8) private myBytes;
    function EthStorage() public {
        myBytes[0] = ZERO;
        emit EthStorageCreated();
    }
    event EthStorageGenerated(uint256 _id, bytes8 _value);
    function myBytes32Value(uint256 _index) public view returns (bytes32 myBytes32Value) {
        myBytes32Value = bytes32(myBytes[_index]);
    }
    uint256[5] memory zeroes;
    function myBytes32Value2() public view returns (bytes32 myBytes32Value) {
        myBytes32Value = bytes32(myBytes[ZERO]);
        return myBytes32Value;
    }
    function myBytes32Value3() public view returns (bytes32 myBytes32Value) {
        myBytes32Value = bytes32(myBytes[0]);
        return myBytes32Value;
    }
    function myBytes32Value4() public view returns (bytes32 myBytes32Value) {
        myBytes32Value = bytes32(myBytes[MAX_BYTES - 1]);
        return myBytes32Value;
    }
    function myBytes32Value5() public view returns (bytes32 myBytes32Value) {
        myBytes32Value = bytes32(myBytes[MAX_BYTES]);
        return myBytes32Value;
    }
}
pragma solidity ^0.8.0;
contract MultiprecisionAndStorage {
    uint256 a;
    uint256 b;
    uint256 c;
    mapping (uint => uint256) mappingOfIdsToAmounts;
    uint8 precision;
    bytes8 myBytes;
    bytes32 myBytes32;
    EthStorage ethStorage;
    struct Foo {
        uint a;
        uint b;
        uint c;
    }
    mapping (uint => uint256[][]) memoryArray;
    mapping (bytes32 => mapping (address => Foo[])) internal mappingOfAddressToBar;
    function convert(uint256 i) public view returns (uint256) {
        return Convert.add(Convert.mul(i, 3), 4);
    }
    function add(uint256 i) public view returns (uint256) {
        return Convert.add(Convert.mul(i, 3), 4);
    }
    function add256(uint256 i) public view returns (uint256) {
        return Convert.add(Convert.mul(i, 3), 4);
    }
    constructor(bytes memory _aBytes, bytes32 memory _aBytes32) {
        a = Convert.fromBytes8(_aBytes);
        b = Convert.fromBytes8(_aBytes);
        c = Convert
