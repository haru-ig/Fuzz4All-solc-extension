pragma solidity ^0.8.0;
contract Mutate_0026 {
    function bad() internal pure returns (uint256) {
        uint a;
        assembly {
            a := a + 1
        }
        return a;
    }
}
library Check_0026 {
    function bad() internal pure returns (uint256) {
        return a + 1;
    }
}
contract Mutate_0027 {
    function good() internal pure returns (uint256) {
        uint a;
        assembly {
            a := a + 1
        }
        return a + 1;
    }
}
library Check_0027 {
    function bad() internal pure returns (uint256) {
        uint256 a;
        assembly {
            a := a + 1
        }
        return a + 1;
    }
}
