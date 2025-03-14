pragma solidity ^0.8.0;
address payable receiverFunction;
contract Test
{
    struct Point
    {
        uint x;
        uint y;
    }
    Point point;
    mapping(uint => string) memory myStringMapping;
    string memory myString;
    mapping (address => string) memory myStringAddressMapping;
    mapping(address => string) public myStringAddressPublicMapping;
    uint z = 1;
    address payable functionToCall;
    function test() public {
        point.x *= 2;
        point.y <<= 0;
        point.x >>= 0;
        point.x |= 0;
        point.x &= 0;
        point.x ^= 0;
        point.x <<= 0;
        z &= 0;
        z ^= 0;
        z <<= 0;
        z >>= 0;
        point.x >>= 0;
        z >>= 0;
        if(!(myStringAddressMapping[receiverFunction])){
            myString = "TEST";
        }
        if(!(myStringAddressPublicMapping[msg.sender])){
            myStringAddressPublicMapping[msg.sender] = "TEST";
        }
        if(!(point.x >= 2)) {
            myStringAddressMapping[receiverFunction] = "TEST";
        }
        if(!(point.y < 20)) {
            myStringAddressMapping[receiverFunction] = "TEST";
        }
        functionToCall = receiverFunction;
        point.y = 10;
    }
}
