pragma solidity ^0.8.0;
contract Test30013 {
    constructor() public {}
    function f() public {
        data[0] = 6;
        data[1] = 300;
    }
    uint8[] public data;
}
