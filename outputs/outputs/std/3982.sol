pragma solidity ^0.8.0;
contract Array3 {
    uint[] public array1_ = [1, 2];
    uint public one_ = 1;
    uint[] public array2_ = [2, 3];
    uint[] internal array2_private;

    uint public sum_;

    function test_getAndSet1() public {
        array1_[0] = 16;
        uint x = 8;
        require(array1_[0] == x, "1");
    }

    function test_getAndSet2() public {
        sum_ = Array2.getSumArray(array2_);
        require(sum_ > 10, "2");
        array2_[1] = 49;
        uint z = 1;
        require(array2_[1] == z, "3");
    }

    function test_getAndSet3() public {
        array2_private[0] = 8;
        uint x = 7;
        require(array2_private[0] == x, "4");
    }
}
