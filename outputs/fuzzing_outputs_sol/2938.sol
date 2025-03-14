pragma solidity ^0.8.0;
contract CallerMutated {
    function with_fallback_in_receive() public {
        call_fallback_payable_receive();
    }
    payable function call_fallback_payable_receive() public {
        payable(address(this)).transfer(msg.value);
    }
    function with_fallback_send() public {
        call_fallback_send();
    }
    function payable function call_fallback_send() public payable {}
    fallback() payable external {
        if (address(this).call {value: msg.value}("")) return;
        emit CallerFallback();
    }
    event CallerFallback();
}
contract CallerMutatedRevert {
    function with_fallback_in_receive_invalid_value() external {
        call_recv_as_payable_fallback();
    }

    function with_fallback_in_receive_error_value() public {
        call_recv_returning_error();
    }

    function payable fallback() payable external {
        msg.sender.call{value: 0}(new bytes(0));
        emit CallerFallback();
    }
    function call_recv_as_payable_fallback() public payable {
        payable(address(this)).call{value: 0}(new bytes(0));
    }
    function call_recv_returning_error() returns (uint256) {
        return address(this).call{value: 0}(new bytes(0));
    }
    event CallerFallback();
}
