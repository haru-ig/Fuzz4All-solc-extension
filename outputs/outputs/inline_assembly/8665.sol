pragma solidity ^0.8.0;
contract Modul{
        uint public s;
        constructor(uint i) {
            s = i;
        }
        fallback() external {
            s += 2;
        }
}
