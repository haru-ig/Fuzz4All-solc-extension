pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract BadCase9 {
    uint256[1] a;

    function run() {
        a[1] += 1;
    }
}
pragma solidity ^0.8.0;
