pragma solidity ^0.8.0;
contract ModCaller {
    function main() public {
        ModCaller().call();
    }
}
contract Caller3 {
    function call() public payable {}
}
