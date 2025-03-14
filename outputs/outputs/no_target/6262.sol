pragma solidity ^0.8.0;
contract MyContract {
    function method() public pure returns (bytes32) {
        if (contractsupportsuint64) {
            return 0;
        } else
            revert;
        return 0;
    }
}

pragma solidity ^0.6.0;
contract MyContract {
    function method() public pure returns (bytes32) {
        return 0;
    }
    function method(uint64) public pure returns (bytes32) {
        return 0;
    }
}
