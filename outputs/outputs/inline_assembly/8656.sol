pragma solidity ^0.8.0;
contract Modul{
        uint public s;
        fallback() external {
            if(s > 3) { return; }
            s = s + 2;
        }
}
```
