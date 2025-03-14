pragma solidity ^0.8.0;
contract third {
    contract test1 {
        function g() public pure returns (address) {
            return address(1);
        }
    }
    function f(uint i) public pure returns (bool) {
        test1 t;
        t.g();
        return true;
    }
}
