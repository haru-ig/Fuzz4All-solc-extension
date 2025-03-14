pragma solidity ^0.8.0;
contract C {
    uint[] public array1;
    uint public v1;
    address public a1;
    constructor() {
        array1.push(1);
        v1=1;
        a1=address(1);
    }
    function pushTest() public {
        array1.push(2);
        v1=2;
        a1=a1;
    }
}
