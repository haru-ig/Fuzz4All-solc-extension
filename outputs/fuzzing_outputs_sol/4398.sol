pragma solidity ^0.8.0;
contract Error {
    Error(address _fallback) {
        require(isContract(_fallback));
        fallback();
    }
}
contract ErrorWithFallback {
    Constructor.sol.fallback();
    bool isContract(address _addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(_addr)
        }
        return size > 0;
    }
}
