pragma solidity ^0.8.0;
contract MyContract
{



    address payable beneficiary = payable(0x29c3838F47845290012A49c245932839FF4e7a31);
    uint256 public constant amount = 20;

    fallback() external payable {}
}
