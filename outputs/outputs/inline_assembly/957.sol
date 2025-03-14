pragma solidity ^0.8.0;
contract Incrementer3 {
    function increment() pure internal returns (uint) {
        increment();
        return 1;
    }
}
*/
