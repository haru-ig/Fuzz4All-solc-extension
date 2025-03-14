pragma solidity ^0.8.0;
contract ArrayAccess {
    constructor(uint[] memory _numbers) {
        _numbers[++_numbers.length];
    }
}

pragma solidity ^0.8.0;
contract Random {
    uint64[] private seed;
    uint[2] private randomNumbers;
    uint256 seedSize;
    constructor(uint256 _seedSize) {
        seedSize = _seedSize;
        seed = new uint64[](this.seedSize);
        for (uint64 i = 0; i < seedSize / 2; ++i) {
            seed[i] = uint64(uint8(keccak256(abi.encodePacked(uint8(keccak256(abi.encodePacked(1580646746, uint64(keccak256(abi.encodePacked(uint8(keccak256(abi.encodePacked(uint64(keccak256(abi.encodePacked(seedSize, uint8(keccak256(abi.encodePacked(uint64(keccak256(abi.encodePacked(1580646746, uint8(keccak256(abi.encodePacked(uint256(i))), uint8(keccak256(abi.encodePacked(uint256(_seedSize)))))))))))))))));
        }
        uint8 randomNumber;
        for (i = 0; i < this.seedSize; ++i) {
            randomNumber = uint8(keccak256(abi.encodePacked(uint256(keccak256(abi.encodePacked(this.seed[i],uint8(_seedSize / 2))])))));
            this.seed[i] += randomNumber;
            randomNumbers[uint256(this.seed[i])] = uint256(this.seed[i]);
        }
    }
    function randomInt() public pure returns (uint256) {
        uint256 randomNumber;
        uint64 randomNumber2 = uint64(uint8(keccak256(abi.encodePacked(uint256(uint64(keccak256(abi.encodePacked(uint8(keccak256(abi.encodePacked(uint256(keccak256(uint8(keccak256(abi.encodePacked(uint256(_seedSize)))))))))))))))))) % this.seedSize;
        return uint64(uint8(keccak256(abi.encodePacked(uint256(randomNumbers[randomNumber2])])))));
    }
    function randomArray(uint elemSize) public view returns (uint[] memory) {
        uint[] memory newArray = new uint[](elemSize);
        newArray[0] = 0;
        uint256 randomArrayLength = this.randomInt();
        if (elemSize
