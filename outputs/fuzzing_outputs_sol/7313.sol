pragma solidity ^0.8.0;
contract MutatedContract {
    function doesMutantFunction() public view returns (uint) {}
    function doesMutantFunction() public pure returns(uint) {}
}

pragma solidity ^0.8.0;
contract CallReceiver {
    function receive() external payable {}
}
interface MutantInterface {
    function doesntGetMutantFunction() view external pure returns();
}
contract MutantContract is MutantInterface {
    function doesMutantFunction() view external pure returns() { revert(); }
}
