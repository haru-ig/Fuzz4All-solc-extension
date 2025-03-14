pragma solidity ^0.8.0;
contract Test14 {
    struct TestStruct {
        uint48 value;
    }
    constructor() public {
        TestStruct memory tmp;
        uint tmpptr = uint(tmp) ;
        uint40 oldptr40 = uint40(tmpptr);
        uint48 olduint48 = uint48(oldptr40);
        uint48 olduint482 = uint48(tmpptr);
        uint48 olduint483 = uint48(tmpptr);
        uint40 newptr40 = uint40(tmp[0]);
        uint48 newuint48 = uint48(oldptr40) ;
        uint48 newuint482 = uint48(tmpptr) ;
        uint48 newuint483 = uint48(tmpptr) ;
        uint48 olduint484 = oldptr40;
        uint48 newptr402 = uint40(tmp[2]);
        uint48 newuint484 = oldptr40 ;
        uint48 newuint485 = tmpptr;
        uint48 newuint486 = tmpptr;
        uint48 olduint487 = uint48(oldptr40);
        uint48 newptr403 = uint40(tmp[3]);
        uint48 newuint487 = oldptr40 ;
        uint48 newuint488 = tmpptr;
        uint48 newuint489 = tmpptr;
        uint48 olduint4810 = oldptr40;
        uint48 newptr404 = uint40(tmp[5]);
        uint48 newuint4810 = oldptr40 ;
        uint48 newuint4811 = tmpptr;
        uint48 newuint4812 = tmpptr;
        uint48 olduint4813 = oldptr40;
        uint48 newptr405 = uint40(tmp[6]);
        uint48 newuint4813 = oldptr40 ;
        uint48 newuint4814 = tmpptr;
        uint48 newuint4815 = tmpptr;
        uint48 olduint4816 = oldptr40;
        uint48 newptr406 = uint40(tmp[6]);
        uint48 newuint4816 = oldptr40 ;
        uint48 newuint4817 = tmp
