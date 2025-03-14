pragma solidity ^0.8.0;
contract LotteryWithArrayIndex {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] public arrayAddresses;
    function getArrayIndex() public view returns(Point[][][] memory){
        Point[][][] memory nonEqualArray = new Point[1][2][3]();
        return nonEqualArray;
    }
    function getNonEqualArrayIndex() public view returns(Point[][][] memory){
        return nonEqualArray;
    }
    function addAddress() public{
        arrayAddresses.push(new Point[][][](3));
    }
    function getArrayAddresses() public view returns(Point[][][] memory){
        addAddress();
        return arrayAddresses;
    }
}

pragma solidity ^0.8.0;
contract LotteryWithArrayIndex {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    mapping (address => uint) public addressToAddressIndex;
    Point[][][] public arrayAddresses;
    function getArrayIndex() public view returns(Point[][][] memory){
        return nonEqualArray;
    }
    function getArrayAddresses() public view returns(Point[][][] memory){
        addressToAddressIndex[msg.sender] = getArrayIndex().length;
        addAddress();
        return arrayAddresses;
    }
}
