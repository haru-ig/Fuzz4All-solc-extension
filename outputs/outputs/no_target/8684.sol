pragma solidity ^0.8.0;
contract Changes {
    function g() public returns (uint256) {
        ChangedABIv3 ca = new ChangedABIv3();
        uint256 x = -40;
        while (true) {
            unchecked {
                x = x / 100;
            }
        }
    }
}
