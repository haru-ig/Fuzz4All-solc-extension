pragma solidity ^0.8.0;
contract Semantic0035 {
    bytes x;
    function same() public pure {
        uint x;
        x = 0;
        if (true) {
            if (false) {
                x = 0;
            } else {
                x += 3;
            }
        } else {
            uint x = 0;
        }

    }
}
pragma solidity ^0.8.0;
contract Semantic0036 {
    bytes x;
    constructor () {

        x = new bytes(0);
        x = byte(0);
    }
}

pragma solidity ^0.8.0;
contract Semantic0037 {

    function g(a_a, a_b, b_a, b_b) public pure returns (uint, uint) {
        return (a_a, a_b);
    }

}


pragma solidity ^0.8.0;



interface Semantic0038 {







    (uint256, uint256) g(uint256 a_a, uint256 a_b, uint256 b_a, uint256 b_b) external pure returns (uint256, uint256);
}
