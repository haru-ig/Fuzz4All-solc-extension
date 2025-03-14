pragma solidity ^0.8.0;
contract C{
    uint k;
    bool b;
    function getResult(uint y) public view returns (uint) {
        b = true;
        uint k_i = 10 << 100;

        k = k_i / y;

        return (b);
    }
}
