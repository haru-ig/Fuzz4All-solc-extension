pragma solidity ^0.8.0;
contract Fallback {
    uint _i;
    address _p;
    uint _u = 0;
    uint public constant publicFallback = 0xCAB;

    function fallback(uint) public pure {
        _i--;
    }

    receive() external payable {
        if (_i!= 100) {
            revert();
        }
        _p.transfer(_u);
    }

    function setPrivateErc20Fallback() public view returns (uint) {
        return _privateErc20Fallback();
    }

    function setLowLevelFallback() public view returns (uint) {
        return lowLevelFallback(_privateErc20Fallback());
    }

    function _privateErc20Fallback() internal view returns (uint) {
        return _addressFallback(address(0x19c87b8c01e1569d6287a33c8694fd70c4f7337d));
    }

    function lowLevelFallback(uint) internal view returns (uint) {
        return _addressFallback(address(this));
    }

    function _addressFallback(address) internal pure returns (uint) {
        return 0xCAB;
    }
}
