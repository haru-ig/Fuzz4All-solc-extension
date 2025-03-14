pragma solidity ^0.8.0;
contract Mod {
    uint constant a = 0xFF;


    function call(uint x) public view returns (uint) {
    return unchecked(a);
    }

    function callUnchecked(uint x) public view returns(uint) {
    return a;
    }
}
