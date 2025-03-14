pragma solidity ^0.8.0;
contract AbiCoder2 {
    uint constant internal max = 5;
    function encodeNumber(uint8[max] memory o, uint8[max] memory i) public pure returns (bytes memory) {}
    function encodeArray(bytes[max] memory o, bytes[max] memory i) public pure returns (bytes memory) {}
    function encodeBytes(bytes[max] memory o, bytes[max] memory i) public pure returns (bytes memory) {}
    function decodeNumber(bytes[max] memory o, bytes[max] memory i, uint x) public pure returns (bool) {}
    function decodeArray(bytes[max] memory o, bytes[max] memory i, uint x) public pure returns (bool) {}
    function decodeBytes(bytes[max] memory o, bytes[max] memory i, bytes memory x) public pure returns (bool) {}
    function decode(bytes[max] memory o, bytes[max] memory i, uint x) public pure returns (bytes memory, bytes memory) {}
}
contract HelloWorld {
    address payable addressTo;
    string public text;
    constructor() public {
        abiCoder = abi.encodePacked(abi.encode(uint8(00))));
    }
    function log() public {
        text = abiCoder.decode(abiCoder.encode(text), (bytes8)[5]);
    }
    function send(address payable to, string memory str) public {
        addressTo = to;
        uint x = 15;
        abiCoder.decode(abiCoder.encode(x), (uint));
        abiCoder.decode(abiCoder.encode(x), (int[]));
        uint y;
        uint256[5][5].decodeNumber(empty, empty, y);
        addressTo.send(y);
        i = 14;
        abiCoder.decodeNumber(abi.encode(addressTo), i, addressTo);
        ABICoder2.decode(abi.encode(uint8(00)), abi.encode(addressTo), addressTo);
        abi.decode(abi.encode(uint8(00)), abi);
        address payable ad = abiCoder.decode(abi.encode(addressTo), (address payable)[4]);
        addressTo = ad.send(x);
        i = 213
