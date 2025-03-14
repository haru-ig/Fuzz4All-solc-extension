pragma solidity ^0.8.0;
contract Caller {

    address account = msg.sender;


    contract SomeContract {
        fallback receive () external payable {
        }


        function call() internal returns (bool) {
            if (_isContract(address(this))) {
                address contractAddress = abi.encodeWithSelector(
                   "receive() external payable"
                );
                address _to = address(uint160(abi.encodePacked(this, contractAddress)));
                uint256 _value = 1 ether;

                (bool success, ) = _to.call{value: _value}("");
                return success;
            } else {
                return false;
            }
        }
    }


    function _isContract(address account) internal view returns (bool) {
        uint32 size;
       assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }
}

pragma solidity ^0.8.0;
contract Caller {

    address account = msg.sender;


    ERC20 token;


    contract SomeContract {

        fallback () external payable {
        }
    }

    function getBalance() public view returns (uint256) {
        return token.balanceOf(account);
    }

    function payWithFallback() public payable returns (uint256) {

        token.transfer(address(this), msg.value);
        return token.balanceOf(address(this));
    }

    function payTokenWithFallback() public payable returns (uint) {

        (bool success, ) = address(msg.sender).call{value: msg.value}("");
        if (success) {
            return token.balanceOf(address(this));
        } else {
            return 0;
        }
    }

    function payTokenWithFallbackCallData() public payable returns (uint) {
        bytes memory data = abi.encodeWithSelector(address(token).transfer.selector, address(this), msg.value);
        (bool success, ) = address(other).call{value: 100 ether}(data);
        if (success) {
            return token.balanceOf(address(this));
        } else {
            return 0;
        }
    }
}
