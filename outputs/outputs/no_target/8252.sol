pragma solidity ^0.8.0;
contract Mutated2c {
    mapping(address => mapping(uint => uint)) balanceOf;

    function balanceOf(address addr) public view returns (uint) {
        return balanceOf[addr];
    }

    function deposit(uint amount) external {
        _safe_send(msg.sender, amount);
    }

    function transferAndCall(address receiver, uint amount, bytes calldata data) external {
        bool calledAndSent = _safe_sendAndCall(msg.sender, receiver, amount, data);
        require(calledAndSent);
    }

    function _safe_send(address receiver, uint amount) internal {
        bool sent = receiver.call{value: amount}(abi.encodeWithSelector(Mutated2c.deposit(byte), amount));
        require(sent);
    }

    function _safe_sendAndCall(address caller, address receiver, uint amount, bytes memory data) internal returns (bool) {
        bool calledAndSent = receiver.call{value: amount}(abi.encodeWithSelector(Mutated2c.deposit(byte), amount), data);
        require(calledAndSent);
        return true;
    }
}
