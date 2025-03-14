pragma solidity ^0.8.0;
contract C1 {
    uint[] public array1;
    uint[] public array2;
    uint public v1;
    address public a1;
    address public a2;
    constructor() {
        array1.push(1);
        array1.push(2);
        array2.push(3);
        array2.push(4);
        v1=1;
        a1="0x000000000000000000000000000000000000000000";
        a2="0x0000000000000000000000000000000000000000000";
    }
    function pushTest(address x) public {
        array2.push(1);
        array1.push(2);
        array1.push(3);
        a1=address(x);
        a2=x;
        v1=1;
    }
}
