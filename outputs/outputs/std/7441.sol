pragma solidity ^0.8.0;
contract Array {
    uint[] public array_;
    function updateAtAddress(uint index, uint x) public {
        array_[1] = x;
    }
    function updateAtIndex(uint index, uint x) public {
        array_[index] = x;
    }
    function getIndex(uint x) public view returns (uint) {
        return array_[x];
    }
    function getSize() public view returns (uint) { return array_.length; }
    function getMin() public view returns (uint) { return findMin(array_); }
    function getMax() public view returns (uint) { return findMax(array_); }
    function getSum() public view returns (uint) { return findSum(array_); }
    function getArrayAsBytes() public view returns (bytes memory){
        bytes memory b = new bytes(getSize());
        for (uint i = 0; i < getSize(); i++) {
            bytes1 bA = bytes1(uint8(array_[i]));
            b[i] = bA;
        }
        return b;
    }
    function sort(uint size) public view returns (uint [] memory sortedArray) {
        uint[] memory array = populateArray();
        require(array.length >= size, "Invalid Array Size");
        sortedArray = sort(array);
    }
}

pragma solidity ^0.8.0;
contract ArrayNew{
    uint[] public array_;
    address first_;
    address last_;
    uint last_length_;
    function populateArrayNew(address x, address x2, uint x3) public {
        first_ = x; last_ = x2;
        last_length_ = x3;
        array_ = new uint[](last_length_);
        array_[0] = 6;
        array_[1] = 4;
    }
    function updateAtAddress(address x, uint x3) public {
        uint index = x.slotMem(first_, 0);
        array_[index] = x3;
    }
    function updateAtIndex(address x, uint x3) public {
        uint index = x.slotMem(first_, 1);
        array_[index] = x
