pragma solidity ^0.8.0;
contract Mutate {
    uint constant private maxUintSize = 32;
    address public owner;
    EthStorage public storageAddress;
    constructor(address _address, EthStorage _storageAddress) {
        owner = _address;
        storageAddress = _storageAddress;
    }

    function transferEther(uint256 value) public onlyOwner {


        assembly {

            store(mload(0x40), mload(0x40))

            let destination := mload(0x40)

            switch destination
                zero case 0 {

                    let current := mload(destination)
                    revert(current)
                }
                else {
                    mstore(destination, value)
                    return(0, destination)
                }
            end
        }
    }


    function setAddressAt(uint256 index, address value) public onlyOwner {

        if (index == maxUintSize - 1) {

            require(!isContract(0));
        }
        index = uint256(index);

        require(index < maxUintSize, "AddressIndexOutBound");
        require(addressToUint[index] == 0 || addressToUint[index] == _address(0), "AddressAlreadyInMapping");


        assembly {
            store(index, mload(0x40))
            store(add(index, 1), mload(value))

            switch destination
                zero case 0 {

                    return(0, 1)
                }
                else {
                    return(0, 0)
                }
            end
        }
    }

    function getAddressAt(uint256 index) public view returns (address) {

        require(index < maxUintSize, "AddressIndexOutBound");
        /* The address that the given index points to may not be
