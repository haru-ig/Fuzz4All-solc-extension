pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint160) {
        assembly {
            let myint128 := mul(2, 1234)
        }
    }
}
pragma solidity ^0.8.12;
contract L {
    function myFunction() public pure returns (uint) {
        assembly {
            let myint128 := mul(2, 42)
        }
    }
}
