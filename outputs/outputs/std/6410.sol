pragma solidity ^0.8.0;
contract Math {
struct MyInt {
    uint256 value;
}
contract Multiprecision {
struct MyInt {
    MyInt value;
}
struct MyInt {
    uint256 sign;
    uint256 exponent;
    uint8 significand;
}
function convert(MyInt memory _a) public view {
    require(!(mySignificand(_a) & 16)!= 0, "Not a positive number");
    MyInt memory b = convertMyInt(_a);
    require(mySignificand(a) == significand(a) + mySignificand(b), "Bad addition");
    require(myExponent(a) == exponent(b), "Bad multiplication");
}
function convertMyInt(MyInt memory _a) public view returns (MyInt memory ) {
    uint256 x = _a.significant;
    for (uint256 k = 1; k < 39; k += 1) {
        uint256 mask = 1U << k;
        if(uint8(x) & mask == mask, "Bad multiply") return (_a);
        x *= 10;
    }
    return (_a);
}
function mySignificand(MyInt memory _a) public pure returns(uint256){return _a.significand;}
function myExponent(MyInt memory _a) public pure returns (uint256){return _a.exponent;}
function significand(MyInt memory _a) public view returns(uint256){return uint256(uint128(0) + _a.significand)};
function exponent(MyInt memory _a) public view returns (uint256){return uint256(10.0 ** _a.exponent);}
}
