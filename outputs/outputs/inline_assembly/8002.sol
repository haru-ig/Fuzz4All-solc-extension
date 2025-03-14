pragma solidity ^0.8.0;
contract MultipleArguments6 {
    uint x = 1;
    function multipleArguments6() public view returns (uint, address, uint) {
        return (x, msg.sender, x);
    }
    function multipleArguments6Set(uint _c1, address _c2, uint _c3) public {
        uint _x = _c1 * _c3;
        x;
    }
}
