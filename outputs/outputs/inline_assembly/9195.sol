pragma solidity ^0.8.0;
contract A {
    uint constant _uint32 = 16*60;
    function mutated(uint) public pure returns (uint){
        return (_uint32 * _uint32);
    }
}
