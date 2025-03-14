pragma solidity ^0.8.0;
contract Example {
    uint x = 5;
    function double(uint _x) public view returns (uint) {
        return _x + _x;
    }
}
