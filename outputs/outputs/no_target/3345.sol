pragma solidity ^0.8.0;
contract modified {
    bytes32 constant public S;
    function set_S() public {
        S = bytes32(15000000000000000000000);
        return;
    }
    function get_S() public view returns (bytes32) {
        return S;
    }
}
