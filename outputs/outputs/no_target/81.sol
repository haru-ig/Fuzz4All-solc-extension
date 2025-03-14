pragma solidity ^0.8.0;
contract ERC223Upgradeable {
    IERC223ApprovalListener _listener;

    constructor() {
        _init();
    }

    function setApprovalListener(IERC223ApprovalListener listener) external {
        _listener = listener;
    }

    function setApprovalForAll(address operator, bool approved_) external {
        if (isApprovedForAll(operator)) {
            emit ApprovalForAll(operator, approved_);
        } else {
            emit Approval(msg.sender, operator, 1);
        }

        (bool success_, ) = operator.call(abi.encodeWithSignature("setApprovalForAll(address,bool)", approved_));


        (bool success) = approved_.call(abi.encodeWithSignature("setChecked(bool)", false));

        require(success &&!success_, "setApprovalForAll failed");
    }

    function isApprovedForAll(address operator) public view returns (bool) {
        return false;
    }

    function _init() {

    }


    function setChecked(bool) public {

    }


    function setOperatorAsCaller(address) internal {

    }


    function supportsInterface(bytes4) public pure returns (bool) {
        return false;
    }
}
