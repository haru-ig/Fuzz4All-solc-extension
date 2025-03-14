pragma solidity ^0.8.0;
contract Mutate23 {
    bytes32[] public x;
    bytes32[] public y;
    mapping(address => bytes32[]) y2;
    mapping(address => int) x2;
    function put(address ad, bytes32[] memory x, bytes32[] memory y) public {
        assert(ad == x[0]);
        y2[x[0]] = y;
        x2[x[0]] = 0;
        assert(x2[x[0]] == 0);
    }
    function get1(address ad, bytes32[] memory x, bytes32[] memory y) public returns(int) {
        return x2[x[0]];
    }
    function get2(address ad, bytes32[] memory x, bytes32[] memory y) public returns(int) {
        return y2[x[0]][0];
    }
    function get(address ad, bytes32[] memory x, bytes32[] memory y) public returns(bytes32[]) {
        return y2[x[0]];
    }
    function put1(address ad, bytes32[] memory x, bytes32[] memory y) public {
        bytes32[] memory foo = y2[x[0]];
        assert(ad == foo[0]);
        y2[x[0]] = foo;
        assert(y2[x[0]].length == 0);
    }
    function put2(address ad, bytes32[] memory x, bytes32[] memory y) public {
        bool ok;
        uint num2;
        bytes32[] memory foo = y2[x[0]];
        assert(ad == foo[0]);
        num2 = foo[0];
        foo[0] = foo[1];
        foo[1] = foo[0];
        assert(num2 == foo[0]);
        delete x2[foo[0]];
        assert(num2 + 1 == foo[0]);
    }
    function test(address ad, bytes32[] memory x, bytes32[] memory y) public {
        put(ad, x, y);
        y2[ad] = get(ad, x2[ad], y2[ad]);
        put1(ad, x2[ad], get(ad, x2[ad], y2[ad]));
        put(ad, x, y);
    }
    function test2(address ad, bytes32[] memory x, bytes32[] memory y) public {
        uint foo;
        bytes32[] memory bar1 = y2[ad];
        assert(x[0] == bar1[0]);
        bar1[1] = bar1[0];
        bytes32[] memory bar2 = y2[ad];
        assert(x[0] ==
