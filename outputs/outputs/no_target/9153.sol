pragma solidity ^0.8.0;
contract simple_abi3 {
    function f() public pure virtual returns (uint256) {
        bytes32 res = abi.encode(1);
        return abi.decode(res, (uint256));
    }
}



pragma solidity ^0.7.0;
contract simple_abi4 {
    function f() public pure virtual returns (uint256) {
        uint8 i = 1;
        uint16 j = 1;
        uint32 k = 1;
        uint64 l = 1;
        uint128 m = 1;
        uint256 n = 1;
    }
}
