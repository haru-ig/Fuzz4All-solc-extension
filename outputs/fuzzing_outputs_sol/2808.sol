pragma solidity ^0.8.0;
contract Caller3 {
    address public fallbackToCaller;

    function Caller(address _c) {
        fallbackToCaller = _c;
    }

    function fallback() public payable {
        require(fallbackToCaller!= address(0));
        fallbackToCaller.call{value: msg.value}("");
    }
}

pragma solidity ^0.8.0;
contract Example {
    address public fallbackToCaller;

    function Example(address _c) {
        fallbackToCaller = _c;
    }

    function _transfer(address dst, uint256 amount) internal {
        require(fallbackToCaller!= address(0));
        fallbackToCaller.call{value: amount}("");
        dst.transfer(amount);
    }

    function senderTransferEther() public {
        _transfer(msg.sender, msg.value);
    }

    receive() external payable {

    }
}
