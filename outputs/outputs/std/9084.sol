pragma solidity ^0.8.0;
import "./Math.sol";
contract ExampleContract {
    uint max_value = 2 ** 256 - 1;
    bool negative;
    uint result = 0;
    function multiply256() public {
        uint c = Math.multiply256(10, 20);
        uint d = Math.multiply256(21, 40);
        uint a = Math.multiply256(7, 100);
        uint b = Math.multiply256(10, 600);
        uint c1 = Math.multiply256(600, 50);
        uint c2 = Math.multiply256(20, 31);
    }
     function multiplyMod256() public {
        uint a = Math.multiply256(6, 256);
     }
}
