pragma solidity ^0.8.0;
contract Array {
    function appendLastElement(uint[] memory array, uint v) public {
        array.push(v);
    }
}
