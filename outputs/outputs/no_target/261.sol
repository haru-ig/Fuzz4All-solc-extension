pragma solidity ^0.8.0;
contract Immutable {
    function _immutable() internal pure returns (uint) {
        return 10;
    }
    uint public immutable _previous;
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
    function balance() public pure returns (uint) {
        return 10;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
    function balance() public pure returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
}
contract Immutable is Immutable {
    function balance() public view returns (uint) {
        _previous + _immutable();
        return _previous;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint) {
        return 10;
    }
    function balance() public returns (uint)
