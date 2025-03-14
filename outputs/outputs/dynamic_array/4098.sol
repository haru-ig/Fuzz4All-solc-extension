pragma solidity ^0.8.0;
contract C {
    uint[3] public data1;
    uint public data2;
    function f() public {
        data1[0] = data2;

        data1 = uint[](2);
    }
}
