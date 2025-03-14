pragma solidity ^0.8.0;
contract MyContract {
    function add(bytes16[] memory a) public pure returns (bytes16[] memory) {
        return a.add(a[0]);
    }
}

import  "./MyContract.sol";
contract Test {
    function test() public pure returns (bytes16[] memory result) {
        result = MyContract.add((bytes16[]) {1, 2, 3});
    }
}
