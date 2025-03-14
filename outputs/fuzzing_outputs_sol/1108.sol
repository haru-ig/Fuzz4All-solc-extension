pragma solidity ^0.8.0;
contract ComplexMutation10 {
    function caller([25]args memory arg) public pure returns (bool) {
        return true;
    }
}

pragma solidity ^0.8.0;
contract ComplexMutation {
    function caller(bytes32 arg) public pure returns (bool) {
        return true;
    }
    function caller([25]arg memory arg) public pure returns (bool) {
        return true;
    }
}
