pragma solidity ^0.8.0;
contract Array {
    uint256[] public numbers;
    uint256 public x;
    function writeXFromArray(uint256 numbers) public {
        x = numbers;
        numbers[x] = x;
    }
    function xFromArray(uint256 p) public view returns (uint256) {
        require(p <= x);
        return numbers[p];
    }
    function sumOfAllElements() public pure returns (uint256) {
        uint256 res = 0;
        for (uint256 i = 0; i < x; ++i) {
            res += numbers[i];
        }
        return res;
    }
}
