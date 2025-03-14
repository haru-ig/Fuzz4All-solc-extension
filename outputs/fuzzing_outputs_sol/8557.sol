pragma solidity ^0.8.0;

contract CallerExample20{
    address public _selfAddress;
    constructor() public {
        _selfAddress = address(this);
    }
    function test() public {
        (bool success, ) = address(CallerExample19(_selfAddress)).call{value: msg.value}("");
        require(success, "fallback function was executed even though contract without fallback function should fail");
    }
}
