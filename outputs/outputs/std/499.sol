pragma solidity ^0.8.0;
contract test {
    uint256[] testArr;
    uint256 testNum1;
    uint256 testNum2;
    uint256 testNum3;
    constructor () {
        testArr.push(1);
        testArr.push(3);
        testNum1 = 3;
        testNum2 = 1;
        testNum3 = 1 + 3 + 1;
    }
    function sum() public view returns (uint256){
        return testNum1 + testNum2 + testNum3;
    }
    function isBigger(uint256 x) public view returns (bool check){
        return x > testNum2? true : false;
    }
    function toBig(uint256 x1) public view returns (uint256 x2){
        return x1 + 1;
    }
}
