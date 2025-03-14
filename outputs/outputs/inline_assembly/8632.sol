pragma solidity ^0.8.0;
contract Modul {
    address public myAddress;
    function modAdd(uint a, uint b, uint value) public pure returns (uint) {
        uint temp = mod(a, b);
        a += (b*value)/temp;
        return a;
    }
}
```
