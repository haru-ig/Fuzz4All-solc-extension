pragma solidity ^0.8.0;
contract Multiply {
    function multiply(uint256 x, uint256 y) public returns (uint256) {
        return x * y;
    }
}
pragma solidity ^0.8.0;
function getArraySum(uint256[] memory ary) public returns (uint256){
    uint256 sum = 0;
    for (uint256 i = 0; i < ary.length; i++) {
        sum += ary[i];
    }
    return sum;
}
