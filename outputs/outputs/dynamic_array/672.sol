pragma solidity ^0.8.0;
contract test61 {
    uint[] storage a;
    constructor() public {
        a = [1, 2, 3];
    }
    function test() public returns (bool) {
        for (uint i = 0; i < a.length; i++) {
            uint i_2 = a[0];
        }
        require(a.length == 3);
        return true;
    }
}
