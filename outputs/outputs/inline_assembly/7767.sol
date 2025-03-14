pragma solidity ^0.8.0;
contract L10 {
    uint256 x;
    uint256 f;
    fixed(uint256) f4;

    event M(int, uint256, bytes32, bytes32);

    constructor() {
        x = 5 ether;
        f = 4*100;
        f4 = 1*100;
    }

    function add2() public {
        x += 2 ether;
    }

    function getX() public view returns (uint) {
        return x;
    }

    function test(int x) public {
        emit M(x, f, bytes32('x'), bytes32('getx'));
        M(x, f, 'x', 'getx');
        M(-x, f, 'negx', 'neggetx');
        M(-x, f4, 'negx', 'neggetx');
        bytes32 b = bytes32('b');
        bytes memory b2 = "Hello ";
        b2.length;
        bytes memory b3 = 'Hello';
        b3.length;
        bytes1 b4 = 0xA;
        b4.length;
    }
}
