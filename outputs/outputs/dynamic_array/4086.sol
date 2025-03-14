pragma solidity ^0.8.0;
contract C {
    uint[] public data1;
    uint public data2;
    function f() public {
        if(data2 == 1) {
            data2 = 2;
        }
        data1.push(data2);
        data1.push(data2);
        for(uint i = 0; i < data1.length; i++){
            data1[i] = 0 * i + data2 / 2;
            data1[data1.length - 1] = data1.length + 1;
        }
    }
}
