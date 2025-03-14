pragma solidity ^0.8.0;
interface TesterInterface {
    receive() external payable { _ }

    function set(uint x) external;
    function call() external payable;
}
pragma solidity ^0.8.0;

contract Tester is TesterInterface {

    mapping(address => uint) public x;
    bytes4 constant _setFallback = type(TesterInterface).functionSelector("set");
    bytes4 constant _callFallback = type(TesterInterface).functionSelector("call");

    function set(uint x) public {
        require(x!= 0, "x cannot be 0");
        if (x < 256) {
            x[_setFallback] = x;
        }
    }

    function call() public payable {
        require(msg.value == 2 ether, "Invalid amount.");

        emit Set(x[msg.sender]);
    }

    event Set(uint value);
}
