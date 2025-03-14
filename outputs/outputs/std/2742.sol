pragma solidity ^0.8.0;
contract Arithmetic {
    uint[] numbers;
}

pragma solidity ^0.8.0;
contract Memory
{
    function getAddress(uint256 i) public pure returns (address r) {
        require(i >= 0 && i < 5, "index out of bounds");
        return address(uint160(i));
    }
    function getArray(uint256[] memory numbers, uint256 i) public pure returns (uint256 r) {
        require(i >= 0 && i <= numbers.length-1, "index out of bounds");
        return numbers[i];
    }
}
contract Test
{
    uint16 i = 0;
    uint8[] memory numbers = [0,1,2,3,4];
    uint16 memory numbers1 = 0;
    uint32[] memory multiprecision = [0,1,2,3,4,5];
    uint128 memory multiprecision2 = 0;
    uint8[] memory numbers14;
    address[] memory addrs = [0,0x11223344,uint32(0xFFFFFFFFFFFFFFFF),address(0xDEADBEEFC0DEEFFE00140FE755BAED89EAA06A207567FDBEB9A5904409A0376)];
    address addr11 = address(uint32(0xFFFFFFFFFFFFF00));
    uint16 memory i2 = 1123;
    uint112 memory memory = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
    uint114 memory multiprecision3 = 114;
    uint[]  memory multiprecision30;
    uint[] memory addrs2;
    uint bytes14;
    address[] memory addrs3;
    bytes memory bytes3;


    function getNumbers() public pure {
        i2 = numbers.length;
        uint256[] memory memoryArray = numbers1;
        i2 = 0xF99A1D1712C34CEBC0D21849E8F0E40F1263F8716BE2CFA55A698C534BD2C6C1CE359AC258CD046450822E0D7AB12DAA58521294891B66D5177850FB1C3F447FF8;
    }


    function getMultiprecision() public pure {
        uint256[] memory multiprecisionArray1 = multiprecision2;
        uint256[] memory multiprecisionArray2 = [1,2,3,45665,123578];
        uint8[]
