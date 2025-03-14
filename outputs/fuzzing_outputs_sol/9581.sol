pragma solidity ^0.8.0;
contract SimpleCaller {
    function simple() public pure {
        emit Simple();
    }
    event Simple();
}
