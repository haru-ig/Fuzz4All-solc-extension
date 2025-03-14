pragma solidity ^0.8.0;
contract Array {
    uint[5] a;
    ArrayLib lib = new ArrayLib();
    function getMin() public view returns (uint) {
        return lib.getMin(a);
    }
    function getMax() public view returns (uint) {
        return lib.getMax(a);
    }
    function add(uint in_) public returns (uint newSum_) {
        newSum_ = lib.add(a, in_);
    }
    function reverse(uint[] memory a_) public view returns (uint[] memory) {
        return lib.reverse(a_);
    }
    function findIndex(uint search) public view returns (uint) {
        return lib.findIndex(a, search);
    }
    function findOne(uint search) public view returns (uint) {
        return lib.findOne(a, search);
    }
    function getSum() public view returns (uint) {
        return lib.getSum(a);
    }
    function sort() public {
        lib.sort(a);
    }
}
