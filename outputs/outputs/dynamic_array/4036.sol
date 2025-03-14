pragma solidity ^0.8.0;
contract C {
    uint[] data2;
    uint[] public data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {
    }
    function f() public {
        data2.pop(); data3.push(3);
        data2.push(0); data3.pop();
        data2.push(4);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[] public data2 = [3, 4, 10, 7, 2];
}
