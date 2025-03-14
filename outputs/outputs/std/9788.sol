pragma solidity ^0.8.0;
contract Mutant_15_4 {
    function newMutant() public {
        uint256 x = 2;
    }

    function oldMutant() public {
        uint256 x = 1;
        uint256 y = x;
        x = x + Math.add(y, y);
    }
    function mutant2() public {
        uint256 x = 117;
        uint256 y = x;
        bytes memory result = "";
        assembly {
            result := mload(0x40)
            x := add(add(x, 10), x)
            x := add(x, 69)
            mstore(result, x)
        }
    }
}
