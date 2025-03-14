pragma solidity ^0.8.0;
import "./test60.sol";
contract test61 {
    uint i;
    constructor() public {
        i = 3;
    }
    function test() public returns (bool) {
        require(false);
        Test60 test60_1;
        delete test60_1.a[1];
        Test61 test61_1;
        delete test61_1.a[i];
    }
}
