pragma solidity ^0.8.0;
contract A6 {
    function f() public {
        uint256[] b = new uint256[](10000);
        return b.length;
    }
}

pragma solidity ^0.8.0;
contract D4 {
    uint256[] public a;
    constructor() public {
        uint256[] memory b = new uint256[](10000);
        a = b;
        uint256[3] memory c = b;
    }
    function g(uint256 i, uint256 x, uint256 y) public {
        for(uint256 i = 0 ; i < 4 ; i = 100) {
            y = x * x + 5*y;
        }
    }
}

pragma solidity ^0.8.0;
contract I21 {
    constructor() public {
        uint256 a = new uint256();
    }
    function H() public {
        uint256 a = 2 +3 * (new uint256() -4);
    }
}

pragma solidity >=0.5.0 <0.8.0;
contract I36 {
    function G() public {
        uint256 a = 1 +2 * new uint256(0);
    }
}

pragma solidity 0.7.0;

contract M5 {
    event ArrayReset(uint256 length);
}
