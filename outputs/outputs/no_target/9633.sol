pragma solidity ^0.8.0;
library Library_Library256 {
    function bar256(uint40 input) external pure returns(uint160) ;
}

pragma solidity ^0.8.0;
library Library_Library256 {
    function foo256(uint40 input) internal pure returns(uint160) {
        return uint160(uint256(input) / 9);
    }
}
contract Contract_Foo256 {
    usingLibrary.Library_Library256 foo256;

    function foo256(uint40 input) internal pure returns(uint160) {
        return uint160(uint256(input >> 2) * 18) + foo256.bar256(input) * foo256.bar256(input >> 12);
    }




    function bar256(uint40 input) external pure returns(uint160) {
        return uint160(uint256(input / 3) + foo256.bar256(input) * foo256.bar256(input >> 12));
    }
}
