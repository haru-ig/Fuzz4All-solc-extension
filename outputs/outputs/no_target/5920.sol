pragma solidity ^0.8.0;
library C {
    function f() public pure pure pure final {
        (address, uint256) x;
        (address, uint256) (address, uint256) z;
        z = x + z;

        (x, uint256) q;
        q = x + -z;
    }
}
contract C2 {
    uint128 i;
    C(9100, 9200, uint128, uint128);
}

pragma solidity ^0.8.0;
interface Test {
    function setInteger(uint256) external;
    function getInteger() external view returns (uint256);
}
contract C3 {
    enum E { A, B, C, D };
    interface I {
        uint256 getI() external;
    }
    function f(E) external {
        require(this instanceof I);
        uint256 x;
        (uint256, uint256, uint256) q;
        q = I(this).getInteger() + uint256(-I(this).getI());
        i += I(this).getI();
    }
}
