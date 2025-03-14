pragma solidity ^0.8.0;
contract Duel {

    struct User {
        uint256 value;
        uint8 v;
        bytes32 r;
        bytes32 s;
        uint8 rOffset;
        uint8 sOffset;
        uint256 vNonce;
        uint8 vSig;
    }

    string public contractName = "Duel";
    User public user;
    uint public totalEther;
    uint public totalToken;
    uint public totalValue;
    uint public timestamp;
    uint public deadline;
    uint8 public nonce;
    bytes32 contractNameHash;
    address payable public payee;

    bytes32 public sha;
    bytes32 private privateSha;
    bytes32 public privateSha256;
    bytes32 public privateSha512;
    bytes32 public privateSha384;
    bytes32 public privateSha224;


    constructor(address payable payee_) payable {
        contractNameHash = keccak256(abi.encodePacked(contractName));
        privateSha.concat(abi.encodePacked(contractName, payee_));
        privateSha256.concat(keccak256(abi.encodePacked(contractName, payee_)));
        privateSha512.concat(keccak256(abi.encodePacked(contractName, payee_)));
        privateSha384.concat(keccak256(abi.encodePacked(contractName, payee_)));
        privateSha224.concat(keccak256(abi.encodePacked(contractName, payee_)));
        user.value = 10000;
        user.vOffset = 1;
        user.v = 27;
        user.vSig = 27;
        payee.transfer(10000000);
    }



    function pay() payable {
        bytes32 payeeAddress = payee.address;
        bytes32 payeeAddressHash = gethash(abi.encode(contractAddress()));
        bytes32 sha = keccak25
