pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint) {
        uint r;
        assembly {
            r := mul(2, 42)
        }
        return r;
    }
}

pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint8) {
        uint8 r;
        assembly {
            r := mul(2, 42)
        }
        return r;
    }
}
