pragma solidity ^0.8.0;
contract Modul{
        uint s;
        constructor(){
            s = 6;
            s = s + 3;
        }
        fallback() external {
            s = s + 1;
        }
}
contract Modul{
        uint s = 2;
        constructor(){
        }
        fallback() external {
            s = s + 3;
        }
}
