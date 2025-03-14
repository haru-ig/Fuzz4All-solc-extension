pragma solidity ^0.8.0;
contract Contract11 {
    uint256 public i;
    fallback() public {
        i = 1;
        callMe();
    }
    function callMe () public {
        uint256 n;
        (n, ) = addrTo(0x80800000000000000000000000000000000000000000000000000000000000000002);
        require(n == 1, "Bad");
        i = 2;
    }
    function addrTo (address addr) internal pure returns (uint256 n, uint256 x) {
        (x, ) = addr.call{value: 0x0}(new bytes(0));
    }
}
