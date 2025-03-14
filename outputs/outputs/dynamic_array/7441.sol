pragma solidity ^0.8.0;
contract Test48 {
    uint[] public dynArr;
    uint dynArr1;
    address dynArr2;
    constructor () public {
        dynArr.push(1);
        dynArr1 = dynArr;
        dynArr2 = dynArr1;
        dynArr1[1] = 2;
    }
    function test() public {
        dynArr.push(2);
        dynArr1.push(3);
    }
    function test2() public {
        dynArr2.transfer(gas left());
        dynArr2.transfer(gas left());
        dynArr2.transfer(gas left());
        dynArr.push(4);
        dynArr1.push(5);
        dynArr1[3] = dynArr1[3]+1;
    }
}
