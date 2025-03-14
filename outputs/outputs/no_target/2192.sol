pragma solidity ^0.8.0;
contract Modifications2 {
    constructor(uint256 _x, uint256 _y) public {
        b = _y;
        c = 10;
        d = 5;
        e = uint(false > true && uint256(3 > 4));
    }
    function f() public {
        a = a / 2;
        b = false == uint256(3 > 4);
        c++;
        d--;
        e = bool128(uint64(bool128(bytes32(uint(keccak256("\x19Ethereum Signed Message:\n32", '0x')) <= keccak256("\x19Ethereum Signed Message:\n32", '0x')) == bool128(bytes32(uint(keccak256("\x19Ethereum Signed Message:\n32", '0x')) <= keccak256("\x19Ethereum Signed Message:\n32", '0x')) * bytes32("\x19Ethereum Signed Message:\n32", '0x')): bool128(bytes32(uint(keccak256("\x19Ethereum Signed Message:\n32", '0x')) <= keccak256("\x19Ethereum Signed Message:\n32", '0x')) * bytes32("\x19Ethereum Signed Message:\n32", '0x'))))==bool128(keccak256("\x19Ethereum Signed Message:\n32", '0x'))==0;
        e = uint(bytes1(0x70));
        bytes memory x1 = new bytes(2000);
    }
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
}
