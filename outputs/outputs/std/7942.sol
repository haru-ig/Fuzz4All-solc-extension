pragma solidity ^0.8.0;
contract Array_sol_new {
    uint256 constant COUNT = 5;
    uint256 count;
    uint256 a;
    mapping(address => uint256) public nameId;


    library SafeMath {

        function add(uint x, uint y) internal pure returns (uint) {
        uint z = x + y;
        require (z >= x);
        return z;
    }

    function sub(uint x, uint y) internal pure returns (uint z) {
        require (x <= y);
        z = x - y;
        return;
    }

    function mul(uint x, uint y) internal pure returns (uint) {
        uint z = x * y;
        require (a == 0 || (z / a == x));
        return z;
    }

    function div(uint x, uint y) internal pure returns (uint) {
        return div(x, y, "SafeMath: division by zero");
    }

    function div(uint x, uint y, string memory errorMessage) internal pure returns (uint) {

        require(y > 0);
        uint z = x / y;

        return z;
    }
    }
}
