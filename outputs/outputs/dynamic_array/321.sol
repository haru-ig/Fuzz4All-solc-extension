pragma solidity ^0.8.0;
contract R3 {
    uint256[] arr;
    function f() public {
        arr = new uint256[](0);
        uint256[] memory b = arr;
    }
}

pragma solidity ^0.8.0;
contract R2 {
    uint256[2] arr;
    function f() public {
        uint256[2][1] memory b = arr;
    }
}

pragma solidity ^0.8.0;
contract R1 {
    uint256[3] arr;
    function f() public {
        uint256[3][1] memory b = arr;
    }
}
