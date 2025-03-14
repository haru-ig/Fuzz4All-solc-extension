pragma solidity ^0.8.0;
library Lib0 {
    function log0(address addr) public pure {
        assembly {
            let size := 0x200
            create(0xfc0, add(0x20, size), addr)
            mstore(0x0, size)
            calldatacopy(size)
            let r := call(sub(0x2040, 30), size)
            returndatacopy(0x0, size)
            revert(size)
        }
    }
}
contract Modifications2_SEM9 {
    constructor(uint _x) public {
        a = _x + 1;
        b = _x + _x;
    }
    function log0() public view returns(uint) {
        uint256 x = a + 1;
        return uint(x * 2 > b * 2? x * 2 : b * 2);
    }
    uint public a;
    uint public b;
}
