pragma solidity ^0.8.0;


contract TestDynamicArrayABIReencoding {
    struct Foo {
        uint value;
    }



    uint a = 9;
    mapping(uint => uint256) arr;

    bool checkTest() public pure returns (uint256) {

        assert(arr.length == 1);
        return arr[1];
    }



    function setArrAndAssertHasCorrectLength() public {
        uint256 size = 20;
        for (uint i = 0; i < size; ++i) {
            arr[40 + i] = 88 + i;
        }

        assert(arr.length == size);
        assert(arr[3] == 1);
        assert((a << 56) + 49 << 24 + 48 == (1 << 56) + 1);
    }


    function assignArrWithoutElements() public {
        uint256 size = 20;
        for (uint i = 0; i < size; ++i) {
            arr[3] = 49 + i;
        }

        assert(arr[0] == arr[1]);
        assert(arr.length == 2);
        assert(arr[3] == 769);
    }


    function testContract() public {
        setArrAndAssertHasCorrectLength();
    }
}
