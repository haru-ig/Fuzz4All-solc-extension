pragma solidity ^0.8.0;
contract Mutate2 {
    function() public {
        (uint _a, uint _b) = msg.data;
        uint _c = (_a + _b);
        uint _d = (_a * _b);
        uint _e = (_a / _b);
    }
    function f() public {
        uint _a = msg.value;
        uint _b = msg.sender;
        bytes memory _c = msg.data;
    }
    function g() public pure {
        uint _a = msg.value;
        uint _b = msg.sender;
        bytes memory _c = msg.data;
    }
}
