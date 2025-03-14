pragma solidity ^0.8.0;
contract test {
    uint256[] testArr;

    function changeArr(){
        testArr.push(2);
        testArr.push(100);
        testArr[1] += 10;
    }
    function setArr(){
        testArr[0] = 100;
        testArr[99] = 3;
        testArr[2] = 4;
    }
    function getArr(){
        bytes memory btestArr = abi.encodeWithSignature("getArr()", testArr);
        return abi.decode(btestArr, (uint256[] memory));
    }
    function isTrueVal(uint256 x){
        return x == 100;
    }
    function check(){
        require(isTrueVal(testArr[0]), "check error");
    }
    function setAndCheck(){
        setArr();
        check();
        changeArr();
        setArr();
        testArr[99] = 5;
        check();
    }
}
