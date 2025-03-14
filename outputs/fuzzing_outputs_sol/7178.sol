pragma solidity ^0.8.0;
interface IExample2 {
    function isValid() external view returns(bool);
    function getA() external view;
    function getB() external returns(bytes32);
    function setCheckFor(address c) external;
}
contract Example2 is IExample2{
    bytes32 constant SAFETY = keccak256("hello world");
    address payable c;
    bytes32 a;
    bytes32 constant AA_FIELD_NAME = keccak256("aaa");
    function isValid() public view returns(bool) {
        return msg.value == 500 ether;
    }
    function getA() public view returns(bytes32) {
        return a;
    }
    function setCheckFor(address c) public {
        require(c!= address(0));
        c.sendValue(address(this).balance);
    }
    function getB() public view returns(bytes32) {
        return SAFETY;
    }
}
