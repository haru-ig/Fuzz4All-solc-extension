pragma solidity ^0.8.0;
contract MyContract {
    function add(bytes16[] memory a) public pure returns (bytes16[] memory) {
        bytes16[] memory b = new bytes16[](a.length + 1);
        for (uint256 i; i < a.length; i++) {
            b[i] = a[i];
        }
        b[a.length] = new bytes16(0);
        return b;
    }
}
