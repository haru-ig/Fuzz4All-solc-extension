pragma solidity ^0.8.0;
contract C {
    function g() public pure returns (address) {
        return address(0);
    }

    function f(uint v) public pure {
        require(v == 5);
    }
}
contract C {
    function g() public pure {
        g();
    }

    function f(uint v) public pure {
        require(v == 5);
        g();
    }
}
contract C {
    event E1();
    event E2(uint256 a, uint b);
    event E3(uint256 a, uint256 b);
    event E4(uint256 a, uint8 b);
    event E5(uint256 a, string memory b);
    event E6(uint256 a, bytes32 b);
    event E7(uint256 a, int b);
    event E8(uint256 a, ufixed b);
    event E9(uint256 a, bytes memory b);
    event E10(uint256 a, bytes1 b);
    event E11(uint256 a, bytes8 b);
    event E12(uint256 a, bytes memory b);
    event E13(uint256 a, bytes16 b);
    event E14(uint256 a, bytes memory b);
    event E15(uint256 a, bytes8 b);
    event E16(address a, uint256 b);
    event E17(address a, string memory b);
    event E18(address a, address b);
    event E19(address a, bytes1 b);
    event E20(address a, bytes32 b);
    event E21(address a, bytes8 b);
    event E22(address a, bytes16 b);
    event E23(address a, bytes32 b);
    event E24(address a, bytes memory b);
    event E25(address a, bytes16 b);
    event E26(uint256 a, uint256 b);
    event E27(uint256 a, uint256 b);
    event E28(uint256 a, uint256 b);
    event E29(uint256 a, address b);
    event E30(uint256 a, bytes b);
    event E31(uint256 a, bytes8 b);
    event E32(uint256 a, double b);

    uint256 y;

    modifier setY(uint a) {
        y = a;
        _;
    }

    constructor() public {
        f(2);
    }

    function f(uint v) public pure {
        if (v!= 2)
            emit E1();

        require(y == 3 * 10);

        emit E2(a, b);

        emit E3(a, b);
