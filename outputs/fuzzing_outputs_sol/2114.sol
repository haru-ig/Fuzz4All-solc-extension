pragma solidity ^0.8.0;
contract Mutater14 {
    mapping(address => address[]) public addresses;
    mapping(uint256 => address) internal addressMap;
    constructor(address _address) {
        addresses[_address].push(_address);
        addressMap[_address] = _address;
    }
    function getAddresses(uint256 _id) public view returns (address[] memory) {
        return addresses[addressMap[uint256(_id)]];
    }
    function addAddresses(uint256[] memory _ids) public returns (uint256[] memory) {
        for (uint256 i = 0; i < _ids.length; i++) {
            addresses[addressMap[uint256(_ids[i])]].push(addressMap[uint256(_ids[i])]);
            addressMap[uint256(_ids[i])] = _ids[i];
        }
        return new uint256[](3);
    }
    function addAdress(uint256 _id) public returns (address[] memory) {
        for (uint256 i = 0; i < _id; i++) {
            addresses.push(new address[](3));
            addressMap[address(addresses[_id][i])] = _id;
        }
        return new address[](3);
    }
}

pragma solidity ^0.8.0;
