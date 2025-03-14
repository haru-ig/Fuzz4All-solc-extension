pragma solidity ^0.8.0;
contract Semantic00230 is Arithmetic {
    function equal() public pure {
        uint256 x = 0;
        while(x == 0) {
            x = 0;
            x = 1;
        }
    }
}

pragma solidity ^0.8.0;
contract Arithmetic {
    function equal() public pure {
        uint256 x = 0;
        while(x == 0) {
        }
    }
}
