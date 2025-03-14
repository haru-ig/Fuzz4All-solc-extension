pragma solidity ^0.8.0;
contract Test {
    function value() public view returns(bool) {
        assembly {
            let a := 4
            let b := a
            a := and(a, b)
            a := lt(a, 3)
        }
        return value();
    }
}

pragma solidity ^0.8.0;
contract Test {
    function value() public view returns(bool) {
        return true;
    }
}
