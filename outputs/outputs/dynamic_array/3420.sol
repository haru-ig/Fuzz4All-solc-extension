pragma solidity ^0.8.0;
contract C {
    uint[] public array;
    uint public v;
    uint public i;
    constructor() {
        array.push(1);
        v=1;
        i=0;
    }
    function pushTest() public {
        array.push(2);
        v=2;
        i++;
    }
    function pushTest2() public {
        array.push(3);
        v=2;
        i++;
    }
    function pushTest3() public {
        array.push(4);
        v=2;
        i++;
    }
    function pushTest4() public {
        array.push(5);
        v=2;
        i++;
    }
}
