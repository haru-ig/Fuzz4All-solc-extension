pragma solidity ^0.8.0;
contract Test69 {
    function y() public {
        uint256[1][1] memory a = new uint256[1][1];
    }
}

pragma solidity ^0.8.0;
contract Test70 {
    function y() public {
        uint256[1][1000000000] memory a = new uint256[1][1000000000];
    }
}
