pragma solidity ^0.8.0;
contract NewSolidity {
    address oldAddress;
    function x() public override view returns (uint) {
        uint x = 74601;
        require(oldAddress!= address(x));
        return x;
    }
}
