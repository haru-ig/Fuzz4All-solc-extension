pragma solidity ^0.8.0;
contract TestFallback5
{
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    function f() private pure {
        (bool result, ) = address(this).call{value: this.balance}("");
        assert(result);
    }
    function g() public pure {
        (bool result, ) = address(this).call{value: this.balance}(abi.encodePacked(f));
        assert(result);
    }
}
