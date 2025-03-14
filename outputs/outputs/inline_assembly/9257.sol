pragma solidity ^0.8.0;
contract A {
    address public immutable myAddress = _msgSender();
    function mutatedBy(uint) public {
        uint a = uint(uint(myAddress) * 10) ** 32;
        uint b = 918710609 * 1421910;
        uint c = b + (uint(_uint64) * 10) ** 32;
        uint d = b + (b + (uint(_uint64) * 10) ** 32) * 10;
        uint e = (a / (5 - d - 1)) * 16 * 10 ** 38;
        uint f = a + c + d + e;
    }
}
