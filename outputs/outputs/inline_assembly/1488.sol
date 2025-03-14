pragma solidity ^0.8.0;

contract Inline
{
  uint64 internal nonce;
  bytes32 internal messageToSign;
  bytes32 internal expectedResult;
  bytes32 internal signature;

  modifier onlyInternal()
  {
    require(msg.sender == address(this), "Only from the contract");
    _;
  }

  constructor () {
    nonce = 1;
    messageToSign = "This contract is created by Solidity by calling the constructor.\n";
    expectedResult = keccak256(abi.encodePacked(this.send.selector, nonce));
  }

  receive () external payable {
  }


  function setMessage(bytes memory _messageToSign) onlyInternal external {
    if (bytes(bytes32(messageToSign)).length == 0) {
      messageToSign = _messageToSign;
    }
  }


  function getResult()
    view
    returns (
      bytes32
    ) {
    return expectedResult;
  }


  function getContract()
    view
    returns (
      address contractAddress
    ) {
    return address(this);
  }


  function getSignature()
    view
    returns (
      bytes32 signature
    ) {
    return signature;
  }



  function getTransactionNonceWithDefaultGasPrice()
    view
    returns (
      bytes32
    ){
    return keccak256(abi.encodePacked(keccak256("\x19Ethereum Signed Message:\n"), bytes32(abi.encodePacked(messageToSign)))));
  }


  function getTransactionWithNonceWithDefaultGasPrice(
    bytes32 _messageToSign,
    uint256 _nonce
  )
    view
    returns (
      bytes32
    ){
    return keccak256(abi.encodePacked(keccak256("\x19Ethereum Signed Message:\n"), bytes32(abi.encodePacked(_messageToSign))), bytes32(abi.encodePacked(keccak256(abi.encodePacked("\x1c\x01", _nonce)))))
  }
