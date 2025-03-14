pragma solidity ^0.8.0;
contract Caller {
    address payable _aAddress;
    function _fallback() public pure returns (uint) {
        address oldWallet = address(this);
        address payable newWallet = payable(address(uint(keccak256(abi.encodePacked(oldWallet, "fallback_receive")))));
        _aAddress.transfer(newWallet);
        return 0;
    }
 }
