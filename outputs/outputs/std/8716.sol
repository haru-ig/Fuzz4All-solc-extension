pragma solidity ^0.8.0;
contract Example
{
    address payable public owner;
    address[] public allAddressesStorage;
    constructor()
    {
        allAddressesStorage.push(address(owner));
    }
    function changeOwner()
    {
        require(msg.sender == owner);
        owner = payable(uint80(msg.data));
    }
    function add(uint v) public
    {
        require(v!= 0);
        allAddressesStorage.push(owner);
    }
    function remove(uint v) public
    {
        require(v >= 0 && v < allAddressesStorage.length);
        address payable to_address = allAddressesStorage[v];
        allAddressesStorage.remove(to_address);
    }

    function length() public view returns (uint)
    {
        return allAddressesStorage.length;
    }
    function sum() public view returns (uint256)
    {
        uint256 z = 0;
        for (uint i = 0; i < allAddressesStorage.length; ++i)
            z += uint256(allAddressesStorage[i]);
        return z;
    }
    function get(uint i) public view returns (address)
    {
        return allAddressesStorage[i];
    }
    function set(uint i, address value) public {
        allAddressesStorage[i] = value;
    }
    function sort() public view returns (address[] memory)
    {
        address[] memory z = new address[](allAddressesStorage.length);
        for (uint j = 1; j < allAddressesStorage.length; ++j) {
            for (uint256 k = j; k > 0; --k) {
                if (allAddressesStorage[k-1] > allAddressesStorage[k]) {
                    address t = allAddressesStorage[k-1];
                    allAddressesStorage[k-1] = allAddressesStorage[k];
                    allAddressesStorage[k] = t;
                }
            }
        }
        return z;
    }
    function print_int(uint v, uint x) public pure
    {
        print(v);
        print(x);
        print(",");
    }

    function hash(uint256 x) public pure returns (bytes32) {
        if (x==0) return bytes32(x);
        return keccak256(abi.encodePacked(x));
    }
}
