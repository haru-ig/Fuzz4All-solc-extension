pragma solidity ^0.8.0;
contract TestCalldataArrayForStorageAllocation {
    address signer;

    constructor(address _signer)
    {
        signer = _signer;
    }

    function allocate(uint64 _amount) public payable {
        signer.transfer(_amount);
    }
}
