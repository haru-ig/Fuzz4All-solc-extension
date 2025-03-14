pragma solidity ^0.8.0;
contract ExampleContract {
    uint256 value1;
    uint256 value2;
    uint256 constant ZERO = 0;
    address payable _address1;

    function ExampleContract() public {
        _address1 = msg.sender;
        value1 = 1;
        value2 = 2;
    }

    function increment() public returns(uint256) {
        value1 = value1 + 1;
        value2 = value2 + 2;
        return value1;
    }
    function incrementWithReturn() public returns(uint256) {
        value1 = value1 + 1;
        value2 = value2 + 2;
        return value1;
    }
    function addWithReturn(uint256 x, uint256 y) public pure returns(uint256) {
        return x + y;
    }
    function subtractWithReturn(uint256 x, uint256 y) public pure returns(uint256) {
        return x - y;
    }
    function multiplyWithReturn(uint256 x, uint256 y) public pure returns(uint256) {
        return x * y;
    }
    function divideWithReturn(uint256 x, uint256 y) public pure returns(uint256) {
        return x / y;
    }
    function multiplyAndTakeOneArgument(uint256 x) public pure returns(uint256) {
        return x * (ONE+ONE);
    }
    function sqrt() public returns(uint256) {
        return sqrtWithReturn(ONE);
    }
    function sqrtWithReturn(uint256 x) public returns(uint256) {
        return ONE / x;
    }
    function addWithReturnWithReturn(uint256 x, uint256 y) public pure returns(uint256) {
        return addWithReturn(x,y);
    }
    function subtractWithReturnWithReturn(uint256 x, uint256 y) public pure returns(uint256) {
        return subtractWithReturn(x,y);
    }

    function assertEqualContract(ExampleContract x) public returns (bytes memory){
        return bytes("123456");
    }

    function assertNotEqualContract(ExampleContract x) public returns (bytes memory){
        return bytes("1234");
    }

    function assertEqualAddress(address x) public returns (bytes memory){
        return bytes("1234");
    }

    function assertNotEqualAddress(address x) public returns (bytes memory){
        return bytes("123456");
    }

    function testNotEqual() public {

        uint256 a = 1;
        uint256 b = 2;
        require(a == b);
    }
}
