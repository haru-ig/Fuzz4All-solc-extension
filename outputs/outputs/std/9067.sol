pragma solidity ^0.8.0;
contract ExampleLibrary {
    uint256 constant public ONEPOWER = 2 ** 0;
    uint256 constant public MIN_SAFE_INTEGER = 18446744073709551615;
    function getSum(uint16 x) public pure returns (uint256){
        return 2 ** 16 + x - 1;
     }
}
