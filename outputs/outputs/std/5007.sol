pragma solidity ^0.8.0;
contract FindSum2 {
    uint[] public a;
    function findSum2(uint256 x, uint256 y) internal pure returns(uint256 sum) {
        uint256 index = 0;
        while (sum < y) {
            sum += x;
            x /= 2;
            index += 1;
        }
        return sum;
    }
}
