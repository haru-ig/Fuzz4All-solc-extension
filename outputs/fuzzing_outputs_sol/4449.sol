pragma solidity ^0.8.0;
contract LegacyCaller is FallbackCaller{
    function f() public pure returns (uint) {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract FallbackCaller2 {
    function get() external pure returns (uint) {
        return 0;
    }
}
