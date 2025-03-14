pragma solidity ^0.8.0;
contract LotteryWithCalldataReverted {
    function changeAddress() public { _nonEqualAddressAddressTables[msg.sender] = true; }
}
