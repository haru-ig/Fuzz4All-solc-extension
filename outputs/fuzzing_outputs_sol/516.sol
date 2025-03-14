pragma solidity ^0.8.0;
contract FallbackTest {
    address public owner;
    string public stringVar = 'Hello';
    constructor() {
        owner = msg.sender;
    }
    function fallback() public pure {
        require((msg.data.length == 0) && (stringVar == 'Hello'), '1a');
    }
}
