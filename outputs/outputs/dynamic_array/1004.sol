pragma solidity ^0.8.0;
contract LotteryWithArrayAccess {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] internal _arrayAddresses;
    Point[][][] internal _testArray;
    bool[] internal _booleans;
    mapping (uint => uint) internal _addressesByQuantity;
    function getNextAddressFromArray(uint quantity, uint point) public view returns(Point memory result){
        if(0 < quantity){
            Point memory ptr = _arrayAddresses[_addressesByQuantity[quantity]][address(this)][point];
            if(ptr.X > 0){
                return ptr;
            }
        }
        return Point({X: 0, Y: 0, Z: 0});
    }
    function getArrayAddresses() public view returns(Point[][][] memory){
        return _arrayAddresses;
    }
}

pragma solidity >=0.5.10;
contract LotteryWithArrayAccess {
    struct Point {
        uint X;
        uint Y;
        uint Z;
    }
    Point[][][] internal _arrayAddresses;
    bool[] internal _booleans;
    mapping (uint => uint) internal _addressesByQuantity;
    function getNextAddressFromArray(uint quantity, uint point) public view returns(Point memory){
        if(0 < quantity){
            Point memory ptr = _arrayAddresses[_addressesByQuantity[quantity]][address(this)][point];
            if(ptr.X > 0){
                return ptr;
            }
            _addressesByQuantity[quantity]++;
        }
        return Point({X: 0, Y: 0, Z: 0});
    }
    function getArrayAddresses() public view returns(Point[][][] memory){
        return _arrayAddresses;
    }
}
