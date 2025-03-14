pragma solidity ^0.8.0;
contract Test30002 {
    address[] private a;
    uint256[] private x;
    uint[] private y;
    uint256[][] private z;
    bytes256[] public bytesZ;
    constructor() public {

    }
    function () external {
        emit Log128(uint256(mint128(3)));
    }
    function mint128(uint256 x) pure returns (uint256) {
        return x+1;
    }
    function () public {
        emit Log();
        uint x = uint(bytes4(0x11) << 64);
        uint y = uint(mystrike(uint(mystrike(x))));
        x = uint(bytes4(0x12) << 64) + x;
        y = uint(mystrike(uint(mystrike(x))));
        x = uint(bytes4(0x13) << 64) + x;
        emit Log128(x);
    }
    event Log128 (uint128 param);
    function mystrike(uint256 x) pure returns (uint256) {
        return x >> 64;
    }
    function () public {
        emit Log();
        bytes32[] memory m;
        bytes4[] memory n;
        bytes32[] memory a;
        bytes32[] memory b;
        bytes11[] memory c;
        bytes4[] memory d;
        bytes32[] memory e;
        bytes11[][] memory f;
        bytes4[][] memory g;
        bytes32[][] memory h;
        m.push(bytes32(2 ** 224));
        m.push(bytes32(2 ** 224 + 1));
        m.push(bytes32(2 ** 224 + 2));
        m.push(bytes32(2 ** 224 + 3));
        uint256 [] memory i;
        i.push(uint256(2 ** 224));
        i.push(uint256(2 ** 224 + 1));
        i.push(uint256(2 ** 224 + 2));
        i.push(uint256(2 ** 224 + 3));
        emit Log128(i);
    }
    event Log128(uint128
