pragma solidity ^0.8.0;
import "./SemanticsEquivalentMutatedDynamicArrayTypeCheck20.sol";
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    uint256[][][][][] array3;
    function MutatedFunction() public {
        array3.push(new uint256[2][3][][](3));
    }
}

pragma solidity ^0.8.0;
contract SemanticsEquivalentDynamicMutableArrayTypeCheck20 {
    uint256[2][3][][] memory array3;
    function MutatedFunction() public {
        array3[1][2] = new uint256[](3);
    }
}
