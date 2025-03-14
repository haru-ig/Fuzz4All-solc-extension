pragma solidity ^0.8.0;
contract ContractA{
    function f1(uint256 _a,address _address){
    }
    string constant f2 = "hello there! ";
    string constant f3 = "Hello there! ";
    function f4() public pure returns (uint256) {
        uint256 x = 0;
        check(x > 0);
        return x;
    }

    function f5() public pure {
        uint256 x = 42;
        check(x > 0);
    }

    function f6() public pure returns (uint256, uint256) {
        (uint256 x, uint256 y) = (1, 42);
        check(x > 0);
        return (x, y);
    }

    function f7() public pure returns (uint256) {
        (uint256 x,, uint256 y) = (1, 42, 123);
        check(y > 0);
        return x;
    }
    function f8() public pure {
        uint256 x;
        uint256 y;
        (_x,y) = (1,42);
        check(_x > 0);
        check(y > 0);
    }
    function f9() public pure returns (uint256, uint256) {
        uint256 x;
        uint256 y;
        (x,y_) = (1,42);
        check(x > 0);
        check(y_ > 0);
        return (x, y_);
    }
    function f10() public pure returns (uint256,uint256) {
        uint256 x;
        uint256 y;
        (x, y) = (1,42);
        check(x > 0);
        check(y > 0);
        return (x, y);
    }
    function f10(uint256 x) public pure returns (uint256){
        uint256 y;
        (y) = (x > 10);
        return y;
    }
}
