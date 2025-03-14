pragma solidity ^0.8.0;
contract Failure {
    receive() external payable {}
    function test(bool _){ if (_){ throw; } }
}
