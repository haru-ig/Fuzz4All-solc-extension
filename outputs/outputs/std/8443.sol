pragma solidity ^0.8.0;
contract ArrayMutationsC6419 {
    uint public x;
    uint[10] public numbers;
    function setA(uint x_, uint[10] memory numbers_) public {
        x = x_;
        numbers = numbers_;
    }
    function getA() public view returns (uint) {
        uint y = x * 2;
        return numbers[0] + y;
    }
    function returnC() public view returns (uint) {
        uint z = 9;
        return numbers[0] + z;
    }
    function xToC() public view returns (bool) {
        return true;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC6420 {
    uint public x;
    uint public y;
    uint public z;
    function callSomeones(int256 x_) public {
        uint256 z_;
        assembly { z_ := sub(x_, 10) }
        assert(z_ == x - 10);
        (x, y) = (y, z);
    }
    function sumThree() public view returns (uint) {
        return x - y + z;
    }
    function someOtherF() public view returns (uint) {
        uint x_;
        assembly { x_ := sub(x, 10) }
        uint256 y_;
        assembly { y_ := sub(y, 10) }
        uint z_;
        assembly { z_ := sub(z, 10) }
        return x_ + y_ + z_;
    }
    function returnC() public returns (uint256 x_) {
        uint256 z_;
        assembly {
            z_ := sub(x, 10)
            x_ := sub(y, 10)
            y_ := sub(z, 10)
        }
        return x_ + z_;
    }
    function xToC() public view returns (bool) {

        return true;
    }
}

pragma solidity ^0.8.0;
contract ArrayMutationsC6421 {
    uint public x;
    uint public y;
    uint public z;
    bool myCall;
    bool[] myFlags;
    constructor(boolean myCall, bool[] memory myFlags_) public {
        myCall = myCall;
        myFlags = myFlags_;
    }
    function setFlag(uint i, bool myFlag) public {
        myFlags[i] = myFlag;
    }
    function testIfFlagSet(uint i) public view returns (
