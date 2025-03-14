pragma solidity ^0.8.0;
contract Caller {
    uint public constant value = 7;
    constructor(address _fallback) internal {
        _registerFallback(_fallback);
    }

    receive() external payable {}
    function _registerFallback(address _fallback) internal {
        _registerInterface(type(IERC1155TokenFallback), _fallback);
    }
}

pragma solidity ^0.8.0;
contract ContractWithFallback {
    IERC1155Token public token;
    constructor(IERC1155Token contract_) {
        token = contract_;
    }

    fallback() external payable {
        token.safeTransferFrom(address(this), msg.sender, address(this), 1, "");
        token.safeTransferFrom(address(this), msg.sender, address(this), 1, "");
        token.safeTransferFrom(address(this), msg.sender, address(this), 1, "");
    }
}



pragma solidity ^0.4.25;


contract MyContract {
    IERC1
