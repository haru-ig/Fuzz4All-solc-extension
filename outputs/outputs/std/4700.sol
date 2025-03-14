pragma solidity ^0.8.0;
contract A {
    uint private f1;
    uint private f2;
    uint private f3;
    uint private f4;
    uint private f5;
    uint public f6;
    struct A {
        uint private f7;
        uint private f8;
    }
    A private f7;
    struct B {
        uint256 f9;
        uint256 f10;
        uint256 f11;
        uint256 f12;
        uint256 f13;
    }
    struct C {
        uint private f14;
    }
}



pragma solidity 0.8.8;



abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        this;
        return msg.data;
    }
}


abstract contract BaseContext is Context {

    address private sender_;


    bytes private data_;

    constructor () {

        require(_msgSender() == address(this), "ERR_MSG_DATA_NOT_CONTRACT");

        address contractAddress = address(this);
        data_ = _msgData();
        sender_ = _msgSender();
        try Context.init.selector.decode(
            95072629848391623702,
            abi.encodeWithSelector(
                contractAddress,
                0xdbe67c234ce95b745ed8be46884ce704d23d7805,
                sender_,
                data_,
                0
            )
        ) {} catch Error(string memory reason) {
            assembly {
                sstore(0x0, add(0x0, reason))
            }
            revert(
                abi.decode(reason, (string))
            );
        } catch {
            revert("ERR_DECODING");
        }
    }
