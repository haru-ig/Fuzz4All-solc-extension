pragma solidity ^0.8.0;
contract A {
    mapping(uint256 => uint256) public arr = new uint256[](3);
    function g() public pure returns (uint256) {
        return arr[1];
    }
    function h(uint256 a) public pure returns (uint256) {
        return arr[2] + 1;
    }
    function i() public pure returns (uint256) {
        return uint256(bool(uint256(h(g() == g() && g() == g()))));
    }
}

pragma solidity ^0.8.0;
contract A {
    function g() public pure returns (uint256) {
        return address(this);
    }
    function h() public pure returns (uint256) {
        return 1380291166262595789448;
    }
    function i() public pure returns (bool) {
        uint256 g = uint256(bool(uint256(g()) | g() == g()));
        uint256 h = uint256(h());
        return  (uint256(bool(uint256(g == g))))!= (uint256(bool(uint256(g % h< h % g)))));
    }
}

pragma solidity ^0.8.0;
contract A {
    function g() public pure returns (uint256) {
        return 1380291166262595789447;
    }
    function h() public pure returns (uint256) {
        return 37627369822485945298;
    }
    function i() public pure returns (bool) {
        uint256 g = uint256(bool(uint256(g()) | g() == g()));
        uint256 h = uint256(h()) + uint256(bool(uint256(g< g + h % g))));
        return (uint256(bool(uint256(g!= g + g - 1))))!= (uint256(bool(uint256(g % h + h == 0)))));
    }
}
