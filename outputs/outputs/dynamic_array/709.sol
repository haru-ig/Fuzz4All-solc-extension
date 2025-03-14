pragma solidity ^0.8.0;
contract test274 {
    uint [999] a;
    constructor() public {
        a[998] = 1;
        if (a.length == 5) a[998] = 0;
    }
    function test() public returns (bool) {
        if (a.length == 5) a[998] = 1;
        return false;
    }
}
