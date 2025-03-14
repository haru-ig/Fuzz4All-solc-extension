pragma solidity ^0.8.0;


contract ArrayWithModifications {

    uint a;
    uint[] memory r;

    constructor (){
        r = [0];
        a = 3;
    }

    function m() external{
        a = a + 5;
        emit mEvt(a);
    }

    function m2() internal{
        b = 6;

        uint x;
        uint y;
        uint z;


        uint local = 5;
        if (local / 10 > a) {
            x = 2;
        }

        if (a - 20 < b) {
            y = 2;
        }

        if (a > b + 30) {
            z = 2;
        }
    }

    function m3(uint[] memory b) public modifier arrayCheck (uint x) {
        assert(x / 10 > a);
        _;
    }

    function em() external {
        a--;
        emit emptied (a);


    }

    function emptied (uint x) public {
        a = 2;
    }
}
