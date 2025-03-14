pragma solidity ^0.8.0;

contract ContextUpgradeSafeMath {
    function __Context_init_00000000() internal initializer { }
    function __Context_init_00000001(address _msgSender) internal initializer {
        require(_msgSender!= address(0), "Context: constructor call to a contract");

        __Context_init_00000002();

    }
    function __Context_init_00000002() internal initializer {
        __Context_init_00000003();
    }
    function __Context_init_00000003() internal initializer { }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }
    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
    function _msgValue() internal view virtual returns (uint256) {
        return msg.value;
    }
}
