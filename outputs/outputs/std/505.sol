pragma solidity ^0.8.0;
contract test {
    uint256[] testArr;
    uint256 testNum1;
    uint256 testNum2;
    uint256 testNum3;
    bytes6 testStr;
    constructor () {
        testArr.push(11);
        testArr.push(3);
        testArr.push(1);
        testNum1 = 1;
        testNum2 = 2;
        testNum3 = 3;
        testStr = bytes6("Hello World");
    }
    function sum() public view returns (uint256){
        return testNum1 + testNum2 + testNum3;
    }
    function length() public view returns (uint256){
        return testArr.length;
    }
    function last() public view returns (uint256){
        return testArr[testArr.length - 1];
    }
    function sub(uint256 x1) public view returns (uint256 x2){
        return x1 - testNum1;
    }
    function isBigger(uint256 x) public view returns (bool check){
        uint256 x2 = testNum2;
        return x > x2 && x < x2 + x2;
    }
    function toBig(uint256 x1) public view returns (uint256 x2){
        return x1 + 1;
    }
    function toStr() public view returns (bytes32 xS) {

        xS = keccak256(abi.encodePacked("0x", hex(testNum2))));
        xS = keccak256(abi.encodePacked(bytes32(testStr)));
    }
}
