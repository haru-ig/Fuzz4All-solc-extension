pragma solidity ^0.8.0;
contract Test {
    function modifyTest() public {
        byte[] a = new byte[10];
        a[0]++;
        a[1]++;
        a = byte[2](2);
        a[0] = byte(1);
    }
    bytes8[] private dynArr;
}
contract A {
    function test() public {
        dynArr = [3, 3];
        dynArr.push(1);
        dynArr.push(2);
    }
    bytes8[] public dynArr;
}
