pragma solidity ^0.8.0;
contract Test48b {
    uint[] public dynArr;
    uint[] dynArr1;

        dynArr.push(1);
        dynArr1 = dynArr;
    function setTest() public {
        dynArr.push(2);
        dynArr1.push(3);
    }
    function test() public {
        dynArr.push(3);
        dynArr1.push(5);
    }
    function test2() public {
        dynArr.push(3);
        dynArr1[4] = 0;
    }
}
