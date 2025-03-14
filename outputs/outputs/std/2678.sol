pragma solidity ^0.8.0;

contract Demo {
    address public owner;
    address private approvalAddress;

    constructor (address _approvalAddress) {
        approvalAddress = _approvalAddress;
        owner = msg.sender;
    }

    function changeApprover() public {
        approvalAddress = msg.sender;
    }

    function handleMessage(address sender, bytes memory details) public returns (bytes memory newDetails) {
        IERC1271 approvalOrOwnerProxy = assembly {
            let _approvalAddress := approvalAddress()
            let _sender := sender()
            let _proxy := 0
        }();

        newDetails = handleDetails(_proxy, sender, details);
        if (verifyProxied(newDetails)) {
            newDetails = approvalOrOwnerProxy.isApprovedOrOwner(address(this), newDetails)
              ? handleDetails(_proxy, sender, bytes(0))
                : newDetails;
        }

        return newDetails;
    }

    bytes private handleDetails(address proxy, address sender, bytes memory details) pure internal returns (bytes memory) {
        if (bytes4(keccak256("onERC1271Received(address,bytes)")) == 0) revert();

        assembly {
            let _details := mload(details)

            let _sender := mload(add(_details, 0x20))

            let _amount := mload(add(_details, 0x70))

            mstore32(add(_details, 0x70), add(_amount, _sender))

            let _isApprovedOrOwner := mload(add(_details, 0x20))

            switch isZero(_amount)
                case 0x0: _isApprovedOrOwner := isZero(isZero(_isApprovedOrOwner)? and(2, _amount) : _isApprovedOrOwner)
                case 0x1: _isApprovedOrOwner := _amount
                default: revert()

            let _isApproved := isZero(_amount) == 0x1

            let _isApprovedOrOwner = and(1, _isApprovedOrOwner)

            let _isApprovedOrOwnerAndApprove := and(2, _isApprovedOrOwner)

            mstore(add(_details, 0x20), _isApprovedOrOwnerAndApprove)
            let _newSender := mload(add(_details, 0x20))

            let _newDetails := mload(add(_details, 0x70))

            switch _isApprovedOrOwnerAndApprove
                case 0x0: mstore(address(0x0), address(0x0))
                default: {
                    mstore(_sender, _amount)

                    let _caller := call(1, proxy, _isApprovedOrOwnerAndApprove, address(this), _newDetails)

                    let result := returndatasize()

                    switch result
                        case 0x0: {}
                        default: _newSender := 0; { revert(add(_details, 0x70), result) }
            }

            mstore(add(_details, 0x20), _newSender
