pragma solidity ^0.8.0;
contract Test71 {
    uint[] public a;

    function f() public {
        a = [29, 34, 56];
        a.push(512);
    }
}
