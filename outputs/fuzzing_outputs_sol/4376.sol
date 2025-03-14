pragma solidity ^0.8.0;
contract Fallback {
    fallback() external payable {}
}
contract A {
    function a() public {
        call_a();
    }
    function call_a() public payable{
        selfdestruct(address(new A));
    }
}
