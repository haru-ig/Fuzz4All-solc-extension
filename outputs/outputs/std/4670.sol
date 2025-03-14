pragma solidity ^0.8.0;
contract D {
    using B for C;
    function g() public pure returns (uint64) {
        return C().g() + B().g();
    }
}
contract E {
    assembly {




    }
}
