pragma solidity ^0.8.0;
contract EquivalentUnmodified {
        string a;
}

pragma solidity ^0.8.0;
contract EquivalentMutated {
    uint8[3] c;
}

interface EquivalentOriginal {
    function returnBytes(uint8 _value) external;
}
contract MutatorOriginal {
    constructor(bytes memory _data) {
        uint8 x = uint8(uint256(_data.sub(keccak256(abi.encodePacked('a')))));
        c[0] = x;
    }

    function getBytes() public pure returns (bytes memory) {
        return bytes(c);
    }

    function getBytes1() public pure returns (bytes memory) {
        return bytes1(c);
    }

    function getBytes2() public pure returns (bytes memory) {
        return bytes2(c);
    }

    function getBytes3() public pure returns (bytes memory) {
        return bytes3(c);
    }

    function getBytes4() public pure returns (bytes memory) {
        return bytes4(c);
    }

    function getBytes5() public pure returns (bytes memory) {
        return bytes5(c);
    }

    function getBytes6() public pure returns (bytes memory) {
        return bytes6(c);
    }

    function getBytes7() public pure returns (bytes memory) {
        return bytes7(c);
    }

    function getBytes8() public pure returns (bytes memory) {
        return bytes8(c);
    }

    function getBytes9() public pure returns (bytes memory) {
        return bytes9(c);
    }

    function getBytes10() public pure returns (bytes memory) {
        return bytes10(c);
    }

    function getBytes11() public pure returns (bytes memory) {
        return bytes11(c);
    }

    function getBytes12() public pure returns (bytes memory) {
        return bytes12(c);
    }

    function getBytes13() public pure returns (bytes memory) {
        return bytes13(c);
    }

    function getBytes14() public pure returns (bytes memory) {
        return bytes14(c);
    }

    function getBytes15() public pure returns (bytes memory) {
        return bytes15(c);
    }

    function getBytes16() public pure returns (bytes memory) {
        return bytes16(c);
    }

    function getBytes17() public pure returns (bytes memory) {
        return bytes17(c);
    }

    function getBytes18() public pure returns (bytes memory) {
        return bytes18(c);
    }

    function getBytes19() public pure returns (bytes memory) {
        return bytes19(c);
    }

    function getBytes20() public pure returns (bytes memory) {
        return bytes20(c);
    }

    function getBytes21() public pure returns (bytes memory) {
        return bytes21(c);
    }

    function getBytes22() public pure returns (bytes memory) {
        return bytes22(c);
    }

    function getBytes23() public pure returns (bytes memory)
