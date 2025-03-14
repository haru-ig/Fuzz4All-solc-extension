pragma solidity ^0.8.0;
contract MyContract {
    address[] public addrs = [];
    function callWithImplicitConversion(bytes16[] memory _a) public view {
        return addrs;
    }

    function checkWithExplicitConversion(bytes32 _a) public pure {

        if (_a!= 0) revert();
    }
    function callWithConversion(bytes16[] memory _a) public view {
        checkWithExplicitConversion(bytes32(uint256(_a)));
        return addrs;
    }
}
