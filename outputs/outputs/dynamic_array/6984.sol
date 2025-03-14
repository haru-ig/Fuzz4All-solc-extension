pragma solidity ^0.8.0;

pragma solidity ^0.7.5;

pragma solidity ^0.7.0;
contract Test8 {
    bytes32[][] a;
    bytes32[] b = new bytes32[](4);
    constructors(uint _size) public {
        for (uint i = 0; i < _size; i++) {
            a.push([i]);
        }
        a.push([i + 1]);
        a.push([i + 1]);
    }
    function getS() public pure returns (uint) {
        return 0;
    }
}
