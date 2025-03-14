pragma solidity ^0.8.0;
contract LotteryWithArrayIndexV058 {
    uint internal _testBool;
    function getArrayIndex() public view returns(Point[][][] memory){
        return new Point[][][]([[[[[[[[[[[[0]]]]]]]]]]);
    }
}
pragma solidity ^0.8.0;
contract LotteryWithArrayIndexV0814 {
    uint internal _testBool;
    function getArrayIndex() public view returns(Point[][][] memory){
        return [[[[[[[[[[[[[[[[0]]]]]]]]]]);
    }
}
pragma solidity ^0.8.0;
contract LotteryWithArrayIndexV1042 {
    uint internal _testBool;
    function getTestArray() public view returns(Point[][][] memory){
        return new (Point[][][]([[[0]]]])[]([[[0]]]][])[]];
    }
    function getNonEqualArray() public view returns(Point[][][] memory){
        return new (Point[][][]([[[0]]]])[]([[[0]]]][])[]];
    }
    function getNonEqualArrayFromV4(uint idx) public view returns(Point[][][] memory){
        bool f = true;
        uint[] memory memory_ = new uint[](3)  {0, 1, 2};
        return new (Point[][][]([[0],[0],[0]]))[]([[[memory_]]]])[];
    }
}
