pragma solidity ^0.8.0;
contract test {
    uint256[] testArr;
    uint256 testNum1;
    uint256 testNum2;
    uint256 testNum3;
    constructor(uint256 x, uint256 y) {
        testArr.push(x);
        testArr.push(y);
        testNum1 = x;
        testNum2 = x + 1;
        testNum3 = y;
    }
    function sum() public view returns (uint256) {
        return testNum1 + testNum2 + testNum3;
    }
    function getSum() public view returns(uint256[] arr){
        uint256[] storage res = testArr;
        uint256[] memory result;
        for(uint256 i = 0; i < res.length; i++){
            uint256 sum_ = res[i];
            for(uint256 j = i + 1; j < res.length; j++){
                sum_ += res[j];
            }
            result.push(sum_);
        }
        return result;
    }
}
