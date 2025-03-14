pragma solidity ^0.8.0;
contract ExampleStruct12 {
    uint8 constant a = 1;
    address constant b = _msgSender();
    uint32 constant c = 11;
    uint8 constant d = a + 2;
    bytes32 constant e = hash('abc');
    bytes32 constant f = hash(abi.encodePacked('def', 'ghi'));

    bytes32 constant h = hash('hi');
    bytes32 constant i = hash(abi.encodePacked('l', 'lo'));

    function hash(string memory str) internal pure returns (bytes32) {
        return keccak256(bytes(str));
    }
}
uint8 constant a = 5;
address constant b = address(0xdeadbeef);
uint32 constant c = 55;
uint16 constant d = 50;
mapping(address => uint8) public balance;
ExampleStruct12 public example12;
ExampleStruct11 public example11;
function getLength(ExampleStruct12 s) public {
    uint8 length = s.getLength().add(1);
    example11 = s;
    bytes memory _bytes = new bytes(length);
    s.getLength(_bytes);
    example12 = s;
    _bytes = new bytes(length);
    s.getLength(_bytes);
    example11 = s;
    bytes memory _bytes1 = new bytes(32);
    uint8 length1 = s.getLength(_bytes1).add(2);
    example11 = s;
}
