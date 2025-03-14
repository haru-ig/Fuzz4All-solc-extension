pragma solidity ^0.8.0;




import "contracts/MixedContactsExample501Interface.sol";

contract MutatedMixedContactsExample500{
    uint256 x;
    uint256 y;
    uint256 z;
    function getX() public view returns (uint256) {
        return x;
    }
    constructor () {
        x = 20;
        y = 7;
        z = 80;
    }
    function mutate() public returns (bool) {
        x += x;
        if(true) {
            x *= 10;
            x += 10;
        }
        x += 30;
        MixedContactsExample501Interface(_1_).someOperation(z);
        x = 5;
        { x /= x + x; }
        x = 8;
    }
    function mutateMe() public view returns (bool x) {
        x = 5;
        x += x;
        x *= 10;
        x += 10;
        { x /= x + x; }
        x = 8;
    }
}
