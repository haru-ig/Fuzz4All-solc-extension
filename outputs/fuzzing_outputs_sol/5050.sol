pragma solidity ^0.8.0;
contract Mumbai {
    fallback (uint256, bytes memory) public {
        revert("Oops! Something went wrong :(");
    }
    receive (uint _a, bytes memory _b) public {
        revert("Oops! Something went wrong :(");
    }
}
