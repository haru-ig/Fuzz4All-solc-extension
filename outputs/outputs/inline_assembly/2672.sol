pragma solidity ^0.8.0;
contract D is D {
    function modify() public {
        x += 5;
    }
}
function f() public view returns(uint) {
    return x;
}
