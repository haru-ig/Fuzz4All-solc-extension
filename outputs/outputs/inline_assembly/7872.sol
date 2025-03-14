pragma solidity ^0.8.0;
contract L25 {
    bytes1616;

    function isContract(address account) internal view returns (bool) {
        uint256 size;
        assembly { size := extcodesize(account) }
        return size > 0;
    }
}
