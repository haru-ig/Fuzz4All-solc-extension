pragma solidity ^0.8.0;
contract IERC165 {


    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool);
}


library Arithmetic {


    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return addWithoutOverflowCheck(a, b);
    }


    function addWithoutOverflowCheck(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }


    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return subWithoutUnderflowCheck(a, b);
    }


    function subWithoutUnderflowCheck(uint256 a, uint256 b) internal pure returns (uint256) {
        require(!(a + b == 0), "Underflow");

        return a - b;
    }


    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if ((uint256(0) <= a) && (uint256(0) <= b))
        {
            return a * b;
        } else
        {
            uint256 overflow = a / b;
            return addWithoutOverflowCheck(overflow, a * b);
        }
    }


    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        require(b > 0, "Division by zero");

        return mul(a, b) / b;
    }
}
