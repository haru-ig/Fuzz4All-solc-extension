pragma solidity ^0.8.0;
contract Caller {
    uint a=1;
    receive() external payable {
        fallback();
    }
    function fallback() public payable {}
}
bytes memory foo = "0x00";
function call(address a) public {
    selfdestruct(a);
}
foo;
