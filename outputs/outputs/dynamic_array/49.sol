pragma solidity ^0.8.0;
contract C {
    uint8 foo;
    function test(A storage a) {
        bArray.push(a.bArray);
        a.bArray = bArray;
        bArray = [1,2];
        foo = 20;
        a.test2(foo,bArray,bArray2);
    }
}
