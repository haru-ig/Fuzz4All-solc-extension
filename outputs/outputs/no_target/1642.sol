pragma solidity ^0.8.0;
contract Semantic0021 {

    modifier validIndex(uint256 index) {
        require(index >= 0, "Contract contract.validIndex");
        require(index < 10, "Contract contract.validIndex");
        _;
    }


    function validIndex(uint index) public pure {
        require(index >= 0 && index < 10, "Contract contract.validIndex");
    }
}
