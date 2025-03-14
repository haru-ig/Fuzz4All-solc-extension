pragma solidity ^0.8.0;
contract Mutator
{
    bool initialized;
    modifier oninit {if (!initialized) { assembly {
        if (initialize(0, 0, 0) { revert(0, 0) } 10000) }
    }}
    constructor (uint256 _x) public oninit { x = _x; initialized = true; }
    function mutateWithFallback() public payable {
        x += 1;
    }
    function mutateWithoutFallback() public payable {
        x += 2;
    }
}
