pragma solidity ^0.8.0;
contract SemanticsEquivalentMutatedDynamicArrayTypeCheck20 {
    mapping (uint256 => uint256[][][]) private array4;
}
pragma solidity ^0.8.0;

contract C
{
    function f() public pure returns (uint256[]) {

        uint256[][][] memory arrays = new uint256[2][2][][];

        uint256[][][] memory arrays2;
        arrays2.push(uint256[2][][](3));
        return arrays2;
    }
}
