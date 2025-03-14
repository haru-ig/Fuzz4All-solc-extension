pragma solidity ^0.8.0;
contract MutatedYulContract {
 uint internal contractCounter;
 uint[100] internal contractData;
     function multiply(uint z) public returns (uint) {
        return (((z * 2) & 0xfffffffffffffff0) >= 1 + c? z : z + c) + 1;
    }
}
