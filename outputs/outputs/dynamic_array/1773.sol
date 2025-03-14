pragma solidity ^0.8.0;

contract DynamcArrayInNestedContracts {
    DerivedAddressesStruct.Address[] public nonStaticAddressArray;
    DerivedAddressesStruct.Address[] public nonStaticAddressArrayInitial;
    DerivedAddressesStruct.Address[] public nonStaticAddressArrayNonMutated;
    DerivedAddressesStruct.Address[] public nonStaticAddressArrayNonMutatedInitial;
    struct DerivedAddressesStruct {
        uint256 index;
        string name;
        mapping (uint256 => DerivedAddressesStruct.Address) addressesMapping;
    }
    struct InheritedAddressesStruct {
        uint256 inheritedAddress;
    }
    function nonStaticAddressArrayAdd(
        string memory _name,
        uint256 _index
    ) public {
        nonStaticAddressArray.push(
            (
                address(this),
                InheritedAddressesStruct(
                    _index
                )
            )
        );
        nonStaticAddressArrayInitial.push(0);
        nonStaticAddressArrayNonMutated.push(
            (
                address(this),
                InheritedAddressesStruct(
                    _index
                )
            )
        );
        nonStaticAddressArrayNonMutatedInitial.push(0);
        DerivedAddressesStruct memory newDerivedAddress = DummyDerivedAddressesStruct(_index);
        newDerivedAddressesMapping[_index] = newDerivedAddress;
    }
}
pragma solidity ^0.6.12;


mapping(uint256 => uint8) public bytesArray26;
mapping(uint256 => uint16) public bytesArray32;
mapping(uint256 => uint32) public bytesArray40;
mapping(uint256 => uint64) public bytesArray48;
mapping(uint256 => uint96) public bytesArray56
