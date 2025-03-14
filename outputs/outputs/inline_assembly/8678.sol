pragma solidity ^0.8.0;
contract Modul{
        uint s;
        constructor(){
            s = 5;
            s = s + 1;
        }
        fallback() external {
            s = s + 3;
        }
}
