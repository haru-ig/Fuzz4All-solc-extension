pragma solidity ^0.8.0;
interface IERC1055{
    function balanceOf(address, uint id) external view returns (uint256 bal);
}

pragma solidity ^0.8.0;
interface IERC1055Delegate{
    function supportsInterface(bytes4) external view returns (bool supports);
}






library SafeMath {

    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }


    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }


    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {



            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a!= b) return (false, 0);
            return (true, c);
        }
    }


    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }
