pragma solidity ^0.8.0;
contract test61 {
    uint[] a;
    constructor() public {
        a = [1, 2, 3];
    }
    function modifier m() {
        a.push(1);
        _;
    }
    function test() public returns (bool) {
        m();
        a.push(1);
        a.push(2);
        a.push(3);
        require(a.length == 3);
        a[0] = 4;
        require(a[0] == 4);
        require(a.length == 4);
        return true;
    }
}
