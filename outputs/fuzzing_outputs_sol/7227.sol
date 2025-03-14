pragma solidity ^0.8.0;
contract Example6 {
    address public valueFromCaller;
    function example6() public receive payable {
        valueFromCaller = msg.sender;
     }
}
contract Fallback{
    contract FallbackExample {
        address public valueFromCaller;
        function fallback() public payable {
            valueFromCaller = msg.sender;
        }
        receive() external payable {
            valueFromCaller = msg.sender;
        }
    }
}
contract Example8 is Fallback{
    address public valueFromCaller;
    function Example8() public payable{
        valueFromCaller= msg.sender;
     }
}
