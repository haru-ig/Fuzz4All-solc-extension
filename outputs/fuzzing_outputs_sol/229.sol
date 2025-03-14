pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    uint256 public integerData = 5;

    fallback function() {
        integerData += 1;
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusReceiveDataStore {
    address payable public selfDestructAddress1;
    address payable public selfDestructAddress2;

    receive () payable {}

    constructor () {
        selfDestructAddress1 = payable(address(this));
        selfDestructAddress2 = payable(address(0x00));
    }

    function selfDestruct() public {
        selfDestructAddress1.transfer(address(this).balance);
        selfDestructAddress2.transfer(address(this).balance);
    }
}
