pragma solidity ^0.8.0;
contract Test48a {
    uint[] public dynArr;
    uint[] dynamicArr1;
    uint[] dynamicArr2;
    constructor () public {
        dynArr.push(1);
        dynamicArr1 = dynArr;
        dynArr2 = dynArr1;
    }
    function setTest() public {
        dynArr.push(2);
        dynamicArr2 = dynArr;
    }
    function test() public {
        dynArr.push(3);
        dynamicArr1 = dynArr;
        dynamicArr2 = dynArr;
    }
    function test2() public {
        dynamicArr1[4] = 0;
    }
}
