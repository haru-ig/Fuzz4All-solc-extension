pragma solidity ^0.8.0;
contract A {
    struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    } _array1 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }[](3);
    struct {
        uint256[] next;
    } _array2 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }[]([3, 3]);
    struct {
        uint256[] next;
    } _array3 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }[](tuple[][]([3, 3]));
    struct {
        uint256[] next;
    } _array4 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }[](uint256[][][]([3, 3]));
    struct {
        uint256[] next;
        uint256[] next2;
    } _array5 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }{}(uint256[][][]([3, 3]));
    struct {
        uint256[] next;
        uint256[] next2;
    } _array6 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }{}(tuple[][][]([3, 3]));
    struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    } _array7 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }{}(uint256[][](tuple[][][3][3]));
    struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    } _array8 = new struct {
        uint256[] next;
        uint256[] next2;
        uint256[] next3;
    }{}(uint256[][][](uint256[][][3][3]));
}
