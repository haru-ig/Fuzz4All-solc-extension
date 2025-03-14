pragma solidity ^0.8.0;
interface LowCostFallback {
    receive() external {}
}
contract SimpleFallback {
    function fallback () public payable returns (bool success) {
        return true;
    }
}
contract LowCostFallbackReceiver {

    function fallback() public payable {}
}
contract Caller {

    fallback() receive (address, uint256) { address(0).balance; }
}
contract ContractWithoutFallback {
    receive() {}
}
