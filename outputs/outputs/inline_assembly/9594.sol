pragma solidity ^0.8.0;
import "./YulContract.sol";
contract YulContractWithImport {
    uint internal contractCounter = 0;
    function addContract() internal returns (uint) {
        contractCounter += 1;
        YulContract storage myContract = YulContract(address(0));
        return myContract.addContract();
    }
}
