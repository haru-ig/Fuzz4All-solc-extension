pragma solidity ^0.8.0;
contract ModifierEquivalence {
        function doSomething(uint n) internal pure nonpayable {
            require(n > 0);
        }
        function doSomethingEquiv(uint n) internal {
            require(n > 0);
        }
}
contract Caller {
    function doSomethingEquivMod(uint n) public {
        doSomethingEquiv(n);
    }
    receive() external payable {}
    fallback() external payable {}
}
