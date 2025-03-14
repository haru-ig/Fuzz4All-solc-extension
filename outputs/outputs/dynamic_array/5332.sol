pragma solidity ^0.8.0;
contract Test76 {
    function test() public view {
        uint256 arraySize;
        (arraySize,) = this.myFucntion(uint256(1), uint256(2));
        assert(arraySize == 1);

        (arraySize,) = this.myFucntion(uint256(2), uint256(3));
        assert(arraySize == 2);

        (arraySize,) = this.myFucntion(uint256(3), uint256(3));
        assert(arraySize == 3);

    }
    function myFucntion(uint i1, uint i2) public view returns (uint256 arraySize, uint256) {
        (arraySize,) = this.x(i1, i2);
        assert(arraySize == i2);

        (arraySize,) = this.x(i1, i2);
        assert(arraySize == i2);
    }
    function x(uint i1, uint i2) public view returns (uint256 arraySize, uint256) {
        uint[] memory a = new uint[](2);
        a[0] = i1;
        a[1] = i2;

        j(i1,i2);
        (arraySize,) = a;

        assert(arraySize == 1);
    }
}
