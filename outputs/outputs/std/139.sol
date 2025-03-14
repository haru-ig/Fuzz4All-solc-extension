pragma solidity ^0.8.0;

pragma solidity ^0.8.0;


contract MintingAddressBook {
    address private _contractAddress;






    constructor(address newContractAddress) {
        _contractAddress = newContractAddress;
    }
    function MintingAddressBook() {}






    function setMintingAddress(address addr) public virtual {
        require(msg.sender == _contractAddress || _mintingAddress()!= address(0), "contract.not.mine");
        _mintingAddress = addr;
    }
    address private _mintingAddress;
    function _owner() public virtual returns (address) {
        return _mintingAddress;
    }

    function _burnWithFrom(uint256 wad, uint256 forFrom, address who) internal virtual {
        if (wad > 0) {
            uint256 tokenContract = wad > 1? wad / 10**45 : 1;
            uint256 currentBalance = SafeMath.sub(address(this).balance, SafeMath.mul(tokenContract, tokenContract));
            assert(currentBalance >= wad);


            _contractAddress.transferFrom(address(this), who, wad);


            (bool success, ) = _mintingAddress.call{value: wad}(abi.encodeWithSignature("_burn(uint256) internal pure", wad)));
            assert(success);
        }
    }

    function _burn(uint256 token) internal virtual {
        _burnWithFrom(token, msg.sender, _owner());
    }
}



contract AddressBook1 {
    uint256 private _numberOne;
    uint256 private _numberTwo;
    addressBook_Contract2 addressBook_Contract1;

    constructor(address new_ContractAddress) {
        addressBook_Contract1 = new addressBook_Contract2(new_ContractAddress);
        addressBook_Contract1.SetAddress_Contract(addressBook_Contract1.AddressOwner());
    }
    function Create() public
