pragma solidity ^0.8.0;
interface CallerInterface {
    function shouldBeFalse() external view returns (bool);
    function payToCaller() external nonpayable;
}
contract ContractWithFallbackCallInNonpayable {
    CallerInterface payable p;
    bytes32 x;
    receive() external payable {
        p.payToCaller();
    }
}
