pragma solidity ^0.8.0;
contract C {
    uint[] public data1;
    uint public data2;
    bool public data3;
    uint[] public data4;
    mapping(uint => uint) public data5;
    function f() public {
        if(data2 == 1) {
            data2 = 2;
        }
        data1.push(data2);
        data1.push(data2);
        data3 = true;
        for(uint i = 0; i < data1.length; i++) {
            data5[i] = 0;
            if(data3) break;
        }
        for(uint i = 0; i < data1.length; i++) {
            data1[i] = data5[i];
            data1[data1.length - 1] = data1.length + 1;
        }
    }
}
