pragma solidity ^0.8.0;
address payable a0;
contract Test {
    function f() public payable {
        function f2() public payable {
            a0 = payable(this);
        }
    }
}
