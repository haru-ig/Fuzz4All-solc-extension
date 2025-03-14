pragma solidity ^0.8.0;
contract SimpleMutation2 is SimpleMutation {
    uint public x = 0;
    uint public y = 0;
    int public z = 0;
    bytes private b = new bytes(32);
    bytes256 private c;

    function simpleMutation() public {
        bytes memory temp = new bytes(64);
        x = 1;
        y = 2;
        z = 3;
        b = new bytes(32);
        temp = 7;

        x = 1;
        b = 4;
        b = 5;
        b = 6;

        emit Simple();
    }
    event Simple();
}
