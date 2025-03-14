pragma solidity ^0.8.0;
contract Test47d {
    uint[] public dynArr;
    uint[] dynArr1;
    constructor () public {
        dynArr.push(1);
        dynArr1 = dynArr;
    }
    function setTest2() public {
        dynArr1[1] = 2;
    }
    function test() public {
        dynArr.push(2);
        dynArr1.push(3);
    }
    function test2() public {
        dynArr[1] = 4;
        dynArr1.push(5);
        dynArr1[3] = dynArr1[3]+1;
    }
}
