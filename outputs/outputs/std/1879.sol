pragma solidity ^0.8.0;
interface OwnableInterface {
    function ownerAddress() external view returns (address);
    function transferOwnership(address _address) external;
}

pragma solidity ^0.8.0;
contract AddressKeeper {
    mapping(bytes32 => address) public accounts;

    function addressOf(bytes32 i) public view returns (address) {
        return accounts[i];
    }

    function registerAccount(address _id) public {
        accounts[keccak256(abi.encode(hexToUint8Array("5505")))] = _id;
    }
}
