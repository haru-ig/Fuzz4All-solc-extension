pragma solidity ^0.8.0;
contract C {
    function doCall(address myContract, uint256 value) public {         emit Simple();
        myContract.call{value: value}(address(B).code.toUint());
        emit Call(value);
    }
}
