pragma solidity ^0.8.0;
contract Lib {
    function mul(uint256 a, uint256 b) public pure returns (uint256) { return a * b; }
    function div(uint256 a, uint256 b) public pure returns (uint256) { return a / b; }
    function mod(uint256 a, uint256 b) public pure returns (uint256) { return a % b; }
}

pragma solidity ^0.8.0;
contract Lib {
    function mul(uint256 a, uint b) public pure returns (uint256) {
        return uint256(a) * b;
    }
}

pragma solidity ^0.8.0;
assembly {
    contract Lib {
        function mul() public pure returns (uint256) {

            return 0x0;
        }
    }
}
