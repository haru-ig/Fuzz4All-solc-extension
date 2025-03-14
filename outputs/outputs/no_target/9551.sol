pragma solidity ^0.8.0;
interface Interface55 {
   function testEvent() external payable;
}

contract Context {


    constructor () internal { }


    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this;
        return msg.data;
    }
}


contract Address {
    bytes32 private constant _EMPTY_CALLDATA = keccak256('');

    function isContract(address account) internal view returns (bool) {
        uint256 size;
       assembly { size := extcodesize(account) }
        return size > 0;
    }

    function toContract(address account) internal view returns (address) {
        if (!isContract(account)) {
            reverts();
        }
        return account;
    }

    function toAddress(address account) public pure returns (address) {
        return toContract(account);
    }

    function toContractAddress(address account) public pure returns (address) {
        if (account == address(0) || account == address(this)) {
            return address(this);
        }

        bytes memory tmp = new bytes(40);

        assembly { mstore(add(tmp, 32), extcodesize(account)) }
        return address(uint160(0x0400 + bytes16(tmp)));
    }

    function fromContractAddress(address account) public pure returns (address) {
        if (account == address(0) || account == address(this)) {
            return address(this);
        }
