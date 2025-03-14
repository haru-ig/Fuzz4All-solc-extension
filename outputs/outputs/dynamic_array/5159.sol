pragma solidity ^0.8.0;
contract Test31 {
    function f() public pure returns (uint256 x, uint8 y) {
        uint256 x;
        x.foo = x.foo;
    }
}
pragma solidity ^0.8.0;
contract Test32 {
    static uint256 immutable SAY_HELLO_STORAGE = 6;
    function f() public pure returns (uint256 x) {
        uint8 memory a;
        uint256 x;
        x.foo = a;
        x.foo = a;
        x.foo = a;
        x.foo = a;
        x.foo = a;
        x = x;
        x = x;
        x = x;
        x = x;
        x = SAY_HELLO_STORAGE;
        return x;
    }
}
pragma solidity ^0.8.0;
contract Test33 {
    using SafeMath for uint256;
    uint8 array[10];
    mapping(address => uint256) balance;
    function f() public pure returns (uint256 x) {
        return (array[0] + uint8(array[1])).add(array[2].touint256()).add(array[3].touint256()).addtouint256();
    }
}
pragma solidity ^0.8.0;
contract Test34 {
    struct A {
        address[2];
        uint8  array;
    }
    function f() public pure returns (A memory) {
        return A(address[2](0x00, 0x00), 0);
    }
    function g() public pure returns (A memory) {
        return A(address[2](0x00, 0x00), 1);
    }
    function f2() public pure returns (A memory) {
        return A(address[2](0x00, 0x00), 0);
    }
}
pragma solidity ^0.8.0;
contract Test35 {
    bytes8[2] b;
    function f() public pure returns (bytes8) {
        bytes8 memory m;
        m = byte(0).add(0x12);
