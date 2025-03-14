pragma solidity ^0.8.0;
contract third {
    function g() public pure returns (address) {
        return 1;
    }
    function m() public pure returns (address) {
        return 1;
    }
}

pragma solidity 0.8.0;
contract third {
    function g() public pure returns (address) {
        return address(1);
    }
    function m() public pure returns (address) {
        return address(2);
    }
}
