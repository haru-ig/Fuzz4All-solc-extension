pragma solidity ^0.8.0;
import "./IERC223Receiver.sol";
import "../utils/Context.sol";
abstract contract ContextUpgradeSafe is Context {
    function __Context_init() internal initializer {
        __Context_init_unchained();
    }
    function __Context_init_unchained() internal initializer {
        Context._msgSendValue(_msgSender());
    }
    function _msgSender() internal view virtual returns (address payable) {
        return Context.msgSender();
    }
    function _msgData() internal view virtual returns (bytes memory) {
        return Context.msgData();
    }
}
