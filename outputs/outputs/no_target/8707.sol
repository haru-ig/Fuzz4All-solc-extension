pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV02WithMutated
{
    function f(uint256 x) public pure {
        x = x + 1 + 2;
        x = x + 2 * x + 3 * 2;
        uint256 y;
        if(x == y) {
            if(x == y * 2) {
                x += x * 2;
            }
        } else {
            if(x == (y * x)) {
                x -= x * x;
            }
        }
    }
    function f(uint256 x, string memory) public pure {
        x = x + 1 + 2;
        x = x + 2 * x + 3 * 2;
        uint256 y;
        if(x == y) {
            if(x == y * 2) {
                x += x * 2;
            }
        } else {
            if(x == (y * x)) {
                x -= x * x;
            }
        }
    }
}

pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV02WithUnchecked
{
    function f(uint256 x) public pure {
        x = unchecked((x - 1) + 2) * (2 + 1);
        uint256[] memory array = new uint256[](2);
        uint256[] memory array2 = new uint256[](2);
        array2[0] = 1;
        array2[1] = 1;
        uint256[] memory array3;
        unchecked {
            unchecked {
                unchecked {
                    unchecked {
                        unchecked {
                            array3 = new uint256[](1);
                            array3[0] = ((array2[0] - 1) + ((array[0][0] + (array2[0] * array2[0])) / 2)) / 2);
                        }
