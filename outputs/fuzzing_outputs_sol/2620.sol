pragma solidity ^0.8.0;

contract myContract {
    contract myContractCaller {
        function fallback() external payable {
            revert();
        }
    }

    function() external payable { revert(); }
}
