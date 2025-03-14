pragma solidity ^0.8.0;

contract MyContract {
    MyData[2][3] arrayIn;
    MyData[2][3] arrayOut;

    modifier mod(uint x) {
        if(x % 2 == 0 ){
            _(0);
        }
        else {
            _(1);
        }
        _;
    }


    function _(uint idx) private pure mod(uint x) {
        if(x == 0) {
            arrayIn[0][idx] = uint(-1);
            arrayIn[1][idx] = uint(-1);
        }
        else {
            arrayIn[0][idx] = (uint)x;
            arrayIn[1][idx] = (uint)x;
        }
    }

    constructor() {}

    function () external payable{
    }

    function dynamicAssign() external{
        arrayOut = uint[](42);
    }

    function checkDynamicAssign() public view {
        uint[42] memory data;
        for(uint i = 2; i < 43; i++) {
            data[i] = i;
        }
        uint[42] calldata data2;
        data2 = arrayIn[0][0];
        assert(data2 == uint(-1));
        data2 = data;
        assert(arrayIn[0][0] == uint(-1));
        assert(arrayIn[0][1] == uint(-1));
        data2 = arrayIn[1][1];
        assert(data2 == uint(-1));
        data2 = data;
        assert(data2 == uint(-1));
        data2 = arrayIn[1][2];
        assert(data2 == uint(-1));
        data2 = data;
        assert(data2 == uint(-1));
        data2 = arrayIn[1][3];
        assert(data2 == uint(-1));
        data2 = data;
        assert(data2 == uint(-1));
        data2 = arrayIn[0][0];
        assert(data2 == uint(-1));
        data2 = data;
        assert(data2 == uint(-1));
        data2 = arrayIn[0][1];
        assert(data2 == bool(0));
        data2 = data;
        assert(data2 == uint(-1));
        data2 = arrayIn[1][2];
        assert(data2 == bool(0));
        data2 = data;
        assert(data2 == uint(-1));
        data2 = arrayIn[1][3];
        assert(data2 == bool(0));
        data2 = data;
        assert(data2 == uint(-1));
    }

    function testDynamicAssign() public {
        _(0);
        _(0);
        _(0);
        _(0);
        _(1);
        _(1);
        _(1);
        _(1
