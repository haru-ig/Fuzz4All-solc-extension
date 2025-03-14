pragma solidity ^0.8.0;
contract MutateSemantically {
    function update() public returns (bool, bool) {
        bool oldBool = true;
        bool newBool = oldBool;
        return (oldBool, newBool);
    }
}
contract MutateSemantically2 {
    bool immutable oldBool;
    bool immutable newBool;
    function update() public returns (bool, bool) {
        return (oldBool, newBool);
    }
}
