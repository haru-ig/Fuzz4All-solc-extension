pragma solidity ^0.8.0;
contract B_T9ES_mut is T9ES_mut {
    constructor () {
        i = 1;
    }


    function mut1() public {
        i1 += 3;
    }

    function mut2(uint x) public {
        a = a1;
    }


pragma solidity ^0.8.0;
contract B {
    function s1(T9ES_mut x) public {
        x.mut1();
        x.mut2(1);
    }


    function s2(T9ES_mut x) public {
        x.i3 = 1;
    }

    function s3(T9ES_mut x) public {
        uint memory _i1;



        x.i3 = 1;
    uint32[] memory _i4;

    uint[] memory d;



    uint y = _i4.length;
}
