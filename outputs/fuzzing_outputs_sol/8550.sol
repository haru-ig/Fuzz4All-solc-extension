pragma solidity ^0.8.0;
contract CallerExample20
{

    address private _contractAddress_;


    function() external payable {
        _contractAddress_ = msg.sender;
    }

    constructor (address contractAddress) {
        _contractAddress_ = contractAddress;
    }

    function getContractAddress() public view returns (address) {


        return address(block.number);
    }

    function printContractAddress() public view returns (address) {
        if(address(this)!= _contractAddress_) {
            revert('Test failed: _contractAddress_ is not the same as the new address created just by calling _contractAddress_.getContractAddress().');
        }
        return address(this);
    }
}
