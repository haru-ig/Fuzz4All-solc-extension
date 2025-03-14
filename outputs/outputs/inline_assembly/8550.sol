pragma solidity ^0.8.0;
contract Modul
{
    function solve() public pure returns (uint) {
        uint r;
        r = 2;
        r = 1;
        if(2 < 100) {
            r = 100;
        } else {
            r = 2;
        }
        if(2 < 200) {
            r = 200;
        }
        return r;
    }
}

pragma solidity ^0.8.0;
contract Modul
{
    function solve() public pure returns (uint, uint) {
        uint r;
        r = 2;
        r = 1;
        if(2 < 100) {
            r = 100;
        } else {
            r = 2;
        }
        if(2 < 200) {
            r = 200;
        }
        return (r, 5);
    }
}
```
