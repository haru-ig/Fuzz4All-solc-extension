pragma solidity ^0.8.0;
contract C {
    function f(string memory _a) public returns (bytes32) {
        assembly {

            sub(_a, _a add(1))
        }
    }
}

pragma solidity ^0.8.0;
contract C {
    function g(address _a) public returns (bytes32) {
        address memory _a_;
        assembly {

            pop(_a_)
        }
    }
}
