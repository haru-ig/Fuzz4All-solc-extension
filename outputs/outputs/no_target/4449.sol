pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint) {
        uint r;
        assembly
        {
            let lo := mload(0)
            lstore(lo, 207)
            r := mul(lo, lo) & 0xfffffffffffff800
        }
        return r;
    }
}
