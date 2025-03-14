pragma solidity ^0.8.0;
library lib23 {
    function m() internal pure returns (uint256 i) {
        return 1;
    }
}

pragma solidity ^0.8.0;
library lib {
    function m() internal returns (uint256 i) {
        return 1;
    }
    function n() public {
        log(m());
    }
}

pragma solidity ^0.8.0;
library lib23 {
    uint constant _GASUSAGE = (1 ether / 9) * 2;
    function m() internal pure returns (uint256 i) {
        return 1;
    }
}

pragma solidity ^0.8.0;
library lib23 {
    uint constant _GASUSAGE = 99000;
}

pragma solidity ^0.8.6;
library lib {
    function m() internal view returns (uint256 i) {
        revert();
    }
}

pragma solidity ^0.8.0;
library lib23 {
    uint constant _GASUSAGE = 99000;
}
