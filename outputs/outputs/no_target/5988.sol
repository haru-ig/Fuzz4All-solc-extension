pragma solidity ^0.8.0;
contract EquivalentSolidityCode {
    struct Inner {
        address from,
        uint162 x
    }
    Inner[] array;

    function update(bytes16[] memory a) public pure returns (address payable[2]) {
        Inner[] memory a2 = array;
        a2.length = 2;
        address[] memory a3 = new address[](3);
        a3[0] = address(0);
        a3[2 * a3.length] = a;
        return a3;
    }
}

pragma solidity ^0.8.0;
contract NoRevert {
    function add(uint162 a) internal pure returns (uint162) {
        return a + 10;
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint162 add(bytes16[] memory a) public pure returns (bytes16[] memory) {
        return a.length > 1? a : new bytes(0);
    }
}
