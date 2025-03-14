pragma solidity ^0.8.0;
contract C {
    uint256 public i;
    unsafe function f() internal returns (uint256) {
        uint256 _i;
        unchecked {
            _i++;
        }
        i++;
        _i--;
        unchecked {
            i--;
        }
        return _i;
    }
}
contract C_v2 {
    uint256 public i;
    safe function f() internal returns (uint256) {
        uint256 _i;
        unchecked {
            _i++;
        }
        i++;
        _i--;
        unchecked {
            i--;
        }
        return _i;
    }
}
contract D {
    function f() public returns (uint256, uint256) {
        return (i + 3, i);
    }
}
