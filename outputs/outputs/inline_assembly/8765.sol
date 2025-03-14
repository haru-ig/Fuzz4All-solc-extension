pragma solidity ^0.8.0;
contract Test {
    function value() public returns(bool) {
        uint num = 1;
        assembly {

            return add(sub(num, 1), 1)
        }
    }
}
