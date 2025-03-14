pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    uint[] public data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {
    }
    function f() public {
        uint[] storage d2_clone = data2;
        uint[] storage d3_clone = data3;

        d2_clone.pop(); d3_clone.push(3);
        d3_clone.pop();
        d2_clone.push(0); d3_clone.pop(); d3_clone.pop();
        d3_clone.push(4); d3_clone.push(5); d2_clone.push(6);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[] public data2;
    uint[] public data3;
    constructor() public {
        data2.push(1);
        data3.push(2);
    }
    receive() external payable {
    }
    function f() public {
        uint[] memory d2_clone = data2;
        uint[] memory d3_clone = data3;

        d3_clone.pop();
        d2_clone.push(1);
        d2_clone.push(2);
        d2_clone.push(3);
        d3_clone.push(4);
    }
}
