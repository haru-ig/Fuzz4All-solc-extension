pragma solidity ^0.8.0;
contract Mutate4 {
    struct AddressStore{
        address first;
        address second;
        address last;
        bytes32[] storedData;
    }
    AddressStore public store;
    mapping(uint256 => address) private randomAddress;
    function getRandomAddress() public view returns(address) {
        return address(uint256(keccak256(abi.encodePacked(
            block.difficulty, block.coinbase, block.timestamp, block.gaslimit, block.gasused, block.chainid, keccak256(abi.encodePacked(block.coinbase)))
        )) % 10));
    }
    function findAndMutate(uint256 index) public pure returns (address, address, bytes32, bytes memory){
        if(index == 0)
            return(store.first, store.last, bytes32(0), abi.encode(0));
        if(index == 1)
            return(store.second, store.last, bytes32(1), abi.encode(1));
        uint256 idx;
        assembly{
            idx := mload(0x40).add(index.sub(256))
        }
        if(idx >= 0){
            bytes32 random = bytes32(idx-1);
            bytes memory value = bytes(abi.encodePacked(store.storedData[idx-1]));
            return(randomFrom(address(this)), randomTo(address(this)), random, value);
        }
        bytes32 random = bytes32(idx);
        bytes memory value = bytes(abi.encodePacked(store.storedData[idx]));
        return(randomFrom(address(this)), randomTo(address(this)), random, value);
    }
    function randomArrayFrom(uint256[] memory array){
            bytes memory value = new bytes(array[1]);
            for(uint256 i = 0; i < array[0]; i++) {
                value[i] = array[i+1];
            }
            return value;
    }
    function findAddress(uint256 index, uint256 randomId, bytes memory random, bytes memory value, address a, address b) public pure returns (bytes32, string memory) {
            bytes32 computed = bytes32(keccak256(abi.encodePacked(a, b)));
            if(bytes32(abi.encodePacked(value)).length > 1 && computed > randomId){
                uint256 randomIdx = idxRandomFor(random, bytes32(computed));
                if (randomIdx > 0)
                    return(bytes32(random[
