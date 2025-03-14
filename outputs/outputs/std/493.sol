pragma solidity ^0.8.0;
contract test {
    uint256[] testArr;
    uint256 testNum1;
    uint256 testNum2;
    uint256 testNum3;

    constructor (uint256 x, uint256 y) {
        testArr.push(x);
        testArr.push(y);

        testNum1 = y;
        testNum2 = x;
        testNum3 = x + y + 1;
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
