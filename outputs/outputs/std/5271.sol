pragma solidity ^0.8.0;
contract MyContract {
    using Arrays for uint256[];
    using ArrayUtil for Arrays.Uint256Array;
    function functionWithArray(uint256[] memory x, uint256 y) internal view {
        uint256[1] memory z;
        uint256[] memory u = x.concat(z);
    }
}
