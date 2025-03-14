pragma solidity ^0.8.0;
contract Test_245129142550316208_ERC677Simple {
    struct Data {
        address token;
        uint256[] calldata params;
        uint8[] calldata signatures;

    }

    IERC677TokenReceiver private(msg.sender).onERC677Received.value(1) payable external returns (bytes4) {
        return IERC677TokenReceiver(0).onERC677Received(address(this), msg.sender, 1, "0x");
    }

    function test() public payable returns (Data memory) {
        Data memory result = Data({ token: address(this) });
        return (result);
    }
}
