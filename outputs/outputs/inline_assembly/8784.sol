pragma solidity ^0.8.0;
contract Test {
    function value() public view returns (bool) {
        return true;
    }
    fallback() external{
    }
    function setValue(bool a) public nonEmpty {
        value = a;
    }
}
