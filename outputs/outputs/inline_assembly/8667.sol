pragma solidity ^0.8.0;
contract Modul{
        uint s;
        constructor(){
            s = 5;
        }
        fallback() external {
            s = s + 3;
        }
}
