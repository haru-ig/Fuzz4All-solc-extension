pragma solidity ^0.8.0;
contract MutatedContract {
    address payable public fallback;
    function mutatedFallback(uint amount, address payable to, bytes memory data) external pure returns (bool ok, uint gasFee) {
        ok = true;
        gasFee = 750;
        fallback.call{value: amount}(to, data);
        return (ok, gasFee);
    }
}

pragma solidity ^0.8.0;
contract FallbackMod {
    uint public constant MAX_FEE = 3;

    function acceptFallback(address payable addr, bytes memory data) public pure {
    }
}
