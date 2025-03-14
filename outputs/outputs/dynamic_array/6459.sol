pragma solidity ^0.8.0;
interface i {
    function m() external returns (uint8 x);
}
contract A {
    uint public[1] data456123;
    mapping(address => bytes) public data456123;
    mapping(bytes4 => uint256) public data456123;
    uint7 public data456123;
    uint8 public[1] data456123;
}
contract ABicalldataarrayAbiReencoding {
    uint public iarr1;
    uint public iarr2;
    uint public iarr3;
    uint[2] public iarr4;
    uint[3] public iarr5;
    uint[4] public iarr6;
    uint[5] public iarr7;
    uint[6] public iarr8;
    uint[7] public iarr9;
    uint[8] public iarr10;
    uint[9] public iarr11;
    uint[10] public iarr12;
    uint[11] public iarr13;
    uint[12] public iarr14;
    event iarr15(uint indexed a, uint indexed b);

    event iarr16(address indexed a, uint indexed b);

    function f() public {
        (uint8 c) = iarr5[0];
        iarr5[1] = 1;

        emit iarr15(c, 1);

        emit iarr16(address(this), 2);

        iarr7[0] = 456;
        emit iarr1(456);
    }
}
contract ABicalldataarrayAbiReencoding2 {
    uint public iarr1;
    uint public iarr2;
    uint public iarr3;
    uint[2] public iarr4;
    uint[3] public iarr5;
    uint[4] public iarr6;
    uint[5] public iarr7;
    uint[6] public iarr8;
    uint[7] public iarr9;
    uint[8] public iarr10;
    uint[9] public iarr11;
    uint[10] public iarr12;
    uint[11] public iarr13;
    uint[12] public iarr14;
    event iarr15(uint indexed a, uint indexed b);

    function f() public {
        iarr7[0] = 456;
        emit iarr1(456);
    }
}
contract AbicalldataarrayAbiReencoding3 {
    uint public iarr1;
    uint public iarr2;
