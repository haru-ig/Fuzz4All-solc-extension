pragma solidity ^0.8.0;
contract Caller {
    uint public _x;
    uint public _y;
    constructor() {

    }
    function add(uint x) internal view returns (uint) {
        return x * 2;
    }
    function div2() internal view returns (uint) {
        return _x + _y/2;
    }
    function div3() internal view returns (uint) {
        return _x + _y * 2;
    }
    function fallback() external {
        (uint256 _x) = div2();
        (uint256 _x) = div3();
        (uint256 _x) = div2();
        uint256 _x;
        (uint256 _x, uint256 _y) = div2();
        (uint256 _x, uint) _y = (div2(), uint(15));
    }
    receive() external payable {
        uint256 _x = div2();
        (uint256 _x) = div3();
    }
}
