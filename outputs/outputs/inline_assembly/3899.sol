pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {




  uint256 public gasPriceWithGasReference = 33000;
  address public owner;

  function doSomethingWithGasReference(uint256 gasReferenceAmount) public {

    emit LogMessage(gasPriceWithGasReference, gasprice);
  }
}

contract SemanticallyEquivalent20 {




  uint256 public gasPriceWithGasReference = 33000;
  mapping(address => uint256) public gasesSentTo;
  mapping(address => uint256) public tokensSpent;
  address[] public addressesToPay;
  uint256[] public totalTokensPledged;
  uint256[] public totalGasesSpent;
  uint256 public totalSentGaseValue = 0;

  event LogMessage(uint256 gasPriceWithGasReference, uint256 gasPrice);

  constructor() {}

  function ownerOf(uint256 tokenId) public view returns (address) {
    return address(uint256(gasesSentTo[tokenId]));
  }

  function safeTransfer(address receiver, uint256 tokenId) public {
    address owner = ownerOf(tokenId);

    transfer(receiver, tokenId);

  }

  function payGas(address payable to, uint256 tokensToPay) public {
    gasesSentTo[to] = gasesSentTo[to] + tokensToPay;
    gasesSentTo[address(this)] = gasesSentTo[address(this)] + tokensToPay;
    emit LogMessage(gasPriceWithGasReference, gasPrice);
  }
