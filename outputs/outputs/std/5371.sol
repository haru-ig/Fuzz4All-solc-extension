pragma solidity ^0.8.0;
contract Mutate4 {
    uint256 public constant maxAmount = 975000;
    bytes32 internal constant hashSeed = "my hash seed";
    uint256 internal constant maxAmountWithRandomness = maxAmount + 1234;
    uint256 internal randomResult;
    event MoneyTransfer(
        address from,
        address to,
        uint256 amount,
        uint256 randomness
    );
    modifier onlyWhenLessThanEqual(uint256 maxVal)
    {
        require(maxAmount >= maxVal, "Max amount exceeded");
        _;
    }
    modifier onlyWhenLessThanOrEqualWithRandomness(
        uint256 maxVal
    )
    {
        require(maxAmountWithRandomness <= maxVal, "Max amount exceeded");
        _;
    }
    constructor() {
        randomResult = _safeAdd(generateRandomBytes32(), 2**(65 - 96));
    }
    function generateRandomBytes32() public view returns (bytes32) {
        return keccak256(abi.encode(block.difficulty));
    }
    function main() public onlyWhenLessThanEqual(maxAmountWithRandomness) {
        bytes32 previousHash = keccak256(abi.encodePacked(hashSeed, randomResult));
        require(previousHash == keccak256(abi.encodePacked(hashSeed, randomResult)), "Wrong seed");
        bytes32 newHash = keccak256(abi.encodePacked(hashSeed, randomResult - 1));
        require(newHash == keccak256(abi.encodePacked(hashSeed, randomResult - 1)), "Correct seed");
        emit MoneyTransfer(
            address(this),
            address(0x00),
            maxAmountWithRandomness,
            randomResult
        );
        emit MoneyTransfer(
            address(0x00),
            address(this),
            maxAmountWithRandomness,
            randomResult
        );
        randomResult = _safeAdd(generateRandomBytes32(), 2**(65 - 96));
    }
    function _safeAdd(uint256 x, uint256 y) internal pure returns (uint256 z) {
        require((z = x + y) >= x, "Safeadd Overflow");
    }
}
