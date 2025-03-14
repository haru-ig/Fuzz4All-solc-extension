pragma solidity ^0.8.0;
interface IExample2 {
    function setCheckFor(address c) external;
    function isValidX(uint _x) external pure;
    function isValidY(uint _xY) external pure;
    function isValidF(uint _xY, uint _z) external pure;
    function isValidD(uint _xY, uint _z, uint _w) external pure;
    function isValidE(uint _xY, uint _z, uint _w, uint _v) external pure;
    function isValidF2(uint _xY, uint _z, uint _w) external pure;
}
contract Example2 is IExample2{
    address payable addr;
    bytes32 constant SAFETY = keccak256("hello world");
    mapping(address => bytes32) public checkFor;
    uint a;
    uint b;
    uint z = 58;
    uint w;
    uint v;
    uint _x = 58;
    uint _y = 34;
    uint _z = 27;
    function setCheckFor(address c) public {
        require(c!= address(0));
        checkFor[c] = SAFETY;
    }
    function isValidX(uint _x) public view returns(bool) {
        return _x == (a+b);
    }
    function isValidY(uint _y) public view returns(bool) {
        return ((_y - _x) == _z);
    }
    function isValidF(uint _xY, uint _z) public view returns(bool) {
        return (a > (b-1) && (c-_xY) == (_z+w));
    }
    function isValidD(uint _xY, uint _z, uint _w) public view returns(bool) {
        return (a > (b-_xY*z));
    }
    function isValidE(uint _xY, uint _z, uint _w, uint _v) public view returns(bool) {
        return (a > (_xY*d) + _z + w + v);
    }
    function isValidF2(uint _xY, uint _z, uint _w) public
