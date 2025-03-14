pragma solidity ^0.8.0;
contract ValueMutatedCall {
    address public valueFromCaller;
    function callExample6() public payable {
        valueFromCaller = IERC20(0xb26050d5080c3eD4eBa82B04923E73aF81dA7D35).transferFrom(
            msg.sender,
            0xeca87D934F6029F5C3B8FC6BE77686a509036A62,
            0
        );
    }
    receive () external payable {
        valueFromCaller = msg.sender;
    }
}
