pragma solidity ^0.8.0;
contract Test {
    uint[10] a;
    uint public c;
    uint public d;
    uint public x;
    constructor () { a[10] = [ c, d ]; }
    function setID(uint _id) public {
        a[10][10] = a[_id];
        a[9][1] = _id;
        a[8][2] = a[_id] + a[_id] + a[_id] + a[_id];
        a[7][3] = a[_id] - a[_id] - a[_id] - a[_id] * a[_id] / 4 / 5 / 6;
        x = 7;
        a[_id] = x / 3 * 3 / 5;
    }
    function modify() public {
        a[9] = 0;
    }
    function add() public returns (uint) { return a[a.length - 1]; }
    function minus() public returns (uint) { return a[a.length - 1] + a[a.length - 1] - a[a.length - 1] - a[a.length - 1]; }
    function divmod() public returns (uint, uint) {
        uint dividend = 10000000;
        uint divisor = 2000000;
        uint result0 = dividend / divisor;
        uint result1 = dividend % divisor;
        dividend = 1000000;
        divisor = 200000;
        result1 = dividend / divisor + result0 / divisor;
        uint result2 = dividend % divisor + result0 % divisor;
        return (result0, result1);
    }
}
