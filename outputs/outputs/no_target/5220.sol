pragma solidity ^0.8.0;
contract SimpleExample18 is SimpleExample17 {
    function doSomething() public {
        uint256 num;
        num = min(num, 1);
        num = max(_num, 5);
        assert(num == uint256(uint160(0x1900)));
    }
    uint256 public _num = uint256(uint160(0x266d));
}
