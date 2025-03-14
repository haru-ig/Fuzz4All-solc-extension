pragma solidity ^0.8.0;



library Address {

    function isContract(address account) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(account)
        }
        return size > 0;
    }


    function sendValue(address payable recipient, uint256 amount) internal {
        _callOptionalReturn(address(this).balance, abi.encodeWithSelector(this.transfer.selector, recipient, amount));
    }

    /**
     * @dev Performs a Solidity function call using a low level `transfer` call. A
     * plain `transfer` call will do, but let's get more accurate and choose to
     * use less gas.
     *
     * https:
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https:
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create
