pragma solidity ^0.8.0;
contract Test {
    uint storage x = 1;
    function value() public view returns(uint) {
        return x;
    }
    function value2(uint v) public view {
        x = v;
    }
    function xgetter() public view returns(uint) {
        return x;
    }
    function xsetter(uint b) public {
        x = b;
    }
}
