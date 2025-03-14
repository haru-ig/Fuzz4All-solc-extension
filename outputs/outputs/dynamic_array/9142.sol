pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract BuggyReceiver {
    bytes32 public constant EIP712_DOMAIN_TYPEHASH = 0x8ce987c30ca2e9dc35c6cc06f4e0a7b465631b9375c5a40561a6427215f79852;
    string public constant EIP712_MESSAGE_SEPARATOR = "\x19\x01\x95";
    uint8 private constant EIP712_VIEWS_TYPEHASH = 0xb8cd731b;
    IERC1155Receiver public contractInterface;

    constructor(IERC1155Receiver newInterface) {
        contractInterface = newInterface;
    }










    function encodeData(uint256[] memory value, uint256 valueLength, uint256[1] memory id) public view returns (bytes memory result) {
        bytes32 domainSeparator = keccak256(abi.encode(EIP712_DOMAIN_TYPEHASH, keccak256(abi.encode(EIP712_MESSAGE_SEPARATOR)), 0));
        bytes32 signature = keccak256(abi.encode(EIP712_VIEWS_TYPEHASH, valueLength, valueLength, valueLength, valueLength));
        bytes32 hash = keccak256(abi.encodePacked("\xe9\xa9\x0
