pragma solidity ^0.8.0;
contract Comp10 {
    uint256 public _publicStorage;
    function __Comp10_init() internal pure returns (uint256) {
        return 0;
    }
    constructor() public {
        _publicStorage = 1;
    }
    function test() public {
        _publicStorage = _publicStorage + 2;
    }
    function testS() public view {
        _publicStorage = 1;
    }
    function test4() public pure{
        _publicStorage = 1;
    }
}
