pragma solidity ^0.8.0;
contract D9 {
    function f(uint256 i, uint256 x, uint256 y) public {
        uint256[] memory a = new uint256[](101);
        uint256[] storage b = a;
    }
}

pragma solidity ^0.8.0;
contract D9{
    function f(uint256 i, uint256 x, uint256 y) public {
        uint256[102] memory a = new uint256[](103);
    }
}

pragma solidity ^0.8.0;
contract D9{
    function f(uint256 i, uint256 x, uint256 y) public {
        uint256[3] memory a = new uint256[](1);
    }
}
