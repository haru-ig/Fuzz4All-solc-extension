pragma solidity ^0.8.0;
contract Fallback {
    bytes32 public constant USER_SLOT_NAME = keccak256('user');
    address payable user;
    constructor () {
        user = payable(address(0));
        emit ChangeUserAddress(USER_SLOT_NAME, address(user));
    }
    function changeUserAddress(address oldUserAddress, address newUserAddress) public {
        if (!_transferEther(oldUserAddress, newUserAddress))
            user = payable(address(0));
        emit ChangeUserAddress(USER_SLOT_NAME, address(user));
    }

    function _transferEther(address oldUserAddress, address newUserAddress) internal returns(bool) {
        if (!newUserAddress.isContract())
            return false;

        (bool success,   ) = newUserAddress.call{value: address(this).balance}('');
        return (success && address(this)!= newUserAddress);
    }
    event ChangeUserAddress(bytes32 slot, address newContractAddress);
}
