pragma solidity ^0.8.0;
contract CallerFallbackMutator {
    address pay payable m_fallback;
    function Mut(uint256 a) external payable {
        m_fallback.transfer(msg.value);

        m_fallback.transferETH{value: msg.value}(msg.sender);
    }
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
    receive() external payable {}
}
