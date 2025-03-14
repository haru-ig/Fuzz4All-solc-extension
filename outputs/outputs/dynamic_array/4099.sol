pragma solidity ^0.8.0;
contract C {
    uint[] public data1;
    uint public data2;
    function f() public {
        if (data2 == 1) {
            data2 = 2;
        }
        data1[data2] = data1.length;
        data1.push(data2)
        data1.push(data2);
        data1.length++;
    }
    receive() external payable {
    }
}
