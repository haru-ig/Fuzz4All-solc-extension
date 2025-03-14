pragma solidity ^0.8.0;
interface IAddressable {
    function revert(uint256 _value) external;
    function mutate(uint256 _value) external;
}

pragma solidity ^0.8.0;

contract AddressableContract {
    IAddressable public immutable immutableAddressable;

    constructor() {
       immutableAddressable = IAddressable(address(this));
    }


    function getAddressable() external virtual pure returns(address) {
       return this;
    }


    constructor(address _originalAddress) public {
        immutableAddressable = IAddressable(address(_originalAddress));
    }


    constructor(address _newAddress) public {
        immutableAddressable = IAddressable(_newAddress);
    }


    function getInheritedAddressable() public readonly returns (address) {
       return immutableAddressable.getAddressable();
    }


    function getInheritedInheritedAddressable() public readonly returns (address) {
       return immutableAddressable.getInheritedAddressable() == address(this)? immutableAddressable : this;
    }
}
