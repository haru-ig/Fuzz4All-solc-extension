pragma solidity ^0.8.0;
contract c {
    bytes32 constant S6 = keccak256('S6');
    bool public exists = true;
    function callme() external returns (bytes32) {
        return S6;
    }
}
*/
