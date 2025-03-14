pragma solidity ^0.8.0;
contract Mutator {
    constructor() {}
    function testMethod(int v) public pure {
        return v - 1;
    }
}
struct AddressInfo {
    bytes32 city;
    address stateOwner;
}
struct AddressList {
    AddressInfo[] addressInfoList;
    mapping(address => uint256) memberList;
}
contract Mutator {
    constructor() public {
        createEntryForAddress("Stuttgart", "Germany");
        createEntryForAddress("London", "United Kingdom");
        createEntryForAddress("Oxford", "United Kingdom");
        createEntryForAddress("Dublin", "Ireland");
        createEntryForAddress("Paris", "France");
    }
    function createEntryForAddress(string memory city, string memory state) public {
        AddressInfo memory stateAddressInfo = AddressInfo({city: keccak256(abi.encodePacked(city)), stateOwner: msg.sender});
        addressToList(stateAddressInfo).addressInfoList.push(addressInfo);
        addressToList(stateAddressInfo).memberList[msg.sender] = addressToListCount();
    }
    function addStateOwnerToAddress(address addressToAdd, uint id) public {
        addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressInfoList[id]),addressInfo),addressInfo),addressInfo),addressInfo),addressInfo),addressInfo))).addressInfoList[id].stateOwner = addressToAdd;
    }
    function isAddressInAnyList(address addressToSearch) public view returns (uint256 index, bool exist) {
        for (uint i = 0; i < addressToListCount(); i++) {
            if (addressToList(addressToSearch).addressInfoList[i].stateOwner == addressToSearch) {
                return (i, true);
            }
        }
        return (0, false);
    }
    function containsAddressInAnyList(address addressToSearch) public view returns (bool inAny) {
        for (uint i = 0; i < addressToListCount(); i++) {
            if (addressToList(addressToSearch).addressInfoList[i].stateOwner == addressToSearch) {
                inAny = true;
                break;
            }
        }
        return inAny;
    }
    function containsAddressInList(address stateOwner) public view returns (bool in) {
        if (!isAddressInList(stateOwner)) {
            return false;
        }
        return true;
    }
    function listAddressByIndex(uint id) public view returns (address stateOwner) {
        return addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressToList(addressToListCount()),addressInfo),addressInfo),addressInfo),addressInfo),addressInfo),addressInfo
