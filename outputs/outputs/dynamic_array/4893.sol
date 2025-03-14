pragma solidity ^0.8.0;
contract Test3 {
    function foo() public {
        uint[][1] memory x = [uint[](15)];
        x[0].push(uint(7));
    }
}
