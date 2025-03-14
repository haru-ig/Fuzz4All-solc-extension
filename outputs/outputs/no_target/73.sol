pragma solidity ^0.8.0;
library SafeMath {
    function add(uint a, uint b) internal pure returns (uint c) {
        require((c = a + b) >= a, "SafeMath: addition overflow");
    }
    function sub(uint a, uint b) internal pure returns (uint c) {
        require((b >= a) && (c = a - b) <= b, "SafeMath: subtraction overflow");
    }
    function mul(uint a, uint b) internal pure returns (uint c) {
        if (a == 0) {
            return 0;
        }
        c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");
    }
}
library SafeERC20 {
    using SafeMath for uint256;
    using Address for address;

    function safeTransferFrom(IERC20 token, address from, address to, uint256 amount) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, amount));
    }

    function safeTransferFrom(IERC20 token, address from, address to, uint256 amount, bytes memory data) internal {
        _callOptionalReturn(token, abi.encodeWithSelector(token.transferFrom.selector, from, to, amount, data));
    }

    function _callOptionalReturn(IERC20 token, bytes memory data) private {
        address to = targetAddress(data);
        if (to.isContract()) {
            (bool success, bytes memory returndata) = to.call{value: msg.value}(data);
            require(success, "SafeERC20: low-level call failed");
            require(abi.decode(returndata, (bool)), "SafeERC20: ERC20 operation did not succeed");
        }
    }

    function targetAddress(bytes memory data) private pure returns (address) {
        bytes4 retval = abi.decode(data, (bytes4));
        if (retval == 0xf26a467d) {
            (address addr, ) = abi.decode(data, (address, ));
            return addr;

        } else if (retval == 0xc908a7a1) {
            (address addr, ) = abi.decode(data, (address, ));
            return addr;
        }
    }
}
