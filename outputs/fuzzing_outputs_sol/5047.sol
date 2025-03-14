pragma solidity ^0.8.0;
contract Fallback {
    function mutate() public pure returns(uint256) {
        return 42;
    }
}
contract ReceiverFallbackFallback {
    address payable receiver;
    bool payable override;
    function mutateAndPay(uint256 val) public pure {
        (uint256 result, ) = address(receiver).delegatecall{value:val}("");
        assert(result == val);
    }

    function payFunction(uint256 val) public payable {
        receiver.call{value:val}("");
    }

    function callFunction(uint256 val) public pure {
        (uint256 result, ) = address(receiver).delegatecall{value:0}("");
        assert(result == val);
    }

    function callDirectFunction(uint256 val) public payable {
        receiver.call{value:0}("");
    }

    constructor() public {
        receiver = msg.value <= 0.2 ether? payable(msg.sender) : address(0xd611A3f21E3838CD1e7328f55644002B1dE0c391);
    }
}
