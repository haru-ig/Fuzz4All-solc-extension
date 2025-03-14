pragma solidity ^0.8.0;
contract MutatedYulContract {
 uint storage _counter;
     function multiply(uint z) public returns (uint) {
        z += _counter;
        return z >= 1 + c? z : z + c;
    }
}
