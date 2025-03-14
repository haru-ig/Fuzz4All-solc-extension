pragma solidity ^0.8.0;
contract Mutagen{
        uint s;
        constructor(){
            s = 5;
        }
    function get() external view returns(uint){
        return s;
    }
    function set() public{
        s = s + 2;
    }
}
```
