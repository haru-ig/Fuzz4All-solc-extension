pragma solidity ^0.8.0;
interface i {
    function m() external {
        require(1 < 2, i(3).m());
        (uint x, uint y) = _twoParams();
        x ^= 1, y *= _oneParam();
    }


    function _twoParams() internal pure returns (uint, uint) {
        return (1, 2);
    }

    function _oneParam() internal pure returns (uint) {
        return 1;
    }


    function _threeParams() internal pure returns (uint x, uint y) {
        emit Emitted();
        return (1, 2);
    }

    event Emitted();
}

pragma solidity ^0.8.0;
interface i {
    function m() external {
        (uint, uint) memory o = _twoParams();
        x *= o, y = o;
    }

    function _twoParams() internal pure returns (uint, uint) {
        require(1 < 2, i(3).m());
        (x, y) = _threeParams();
        x ^= 1, y *= _oneParam();
    }

    function _oneParam() internal pure returns (uint) {
        return 1;
    }


    function _threeParams() internal pure returns (uint x, uint y) {
        emit Emitted();
        return (1, 2);
    }

    event Emitted();
}
