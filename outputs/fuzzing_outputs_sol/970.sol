pragma solidity ^0.8.0;
contract CallMutated {
    uint[] public a;

    modifier checkAddress {
        assert(msg.data.length > 0);
        assert(address(this).transferFrom(msg.sender, address(this), msg.data));
        _;
    }
    modifier checkData {
        assert(msg.data.length > 0);
        _;
    }
    function _mutate() external checkAddress, checkData {
        emit EmittedMessage();
    }
}
contract CallWithoutFallback {
    receive() external payable {}
}
contract CallMutatedWithoutFallback {
    uint[] public a;

    modifier checkAddress {
        assert(msg.data.length > 0);
        assert(address(this).transferFrom(msg.sender, address(this), msg.data));
        _;
    }
    modifier checkData {
        assert(msg.data.length > 0);
        _;
    }
    function _mutate() external checkAddress, checkData {
        emit EmittedMessage();
    }
}
contract NonPayableFunction {
    constructor() payable{}

    function transferToPayable() public payable {
        require((address(this).transferFrom(msg.sender, address(this), msg.data)));
    }

    function transferWithoutPayable() public {
        require(msg.data.length == 0);
        address payable to;
        assembly {
            to := mload(add(0x4, 0x20))
            switch returndatacopy(0x4, 0x20, 0x40) switch returndatacopy(0x4, 0x80, 0x32) nop 41 60 0x40 0x32 {
                case 0x11: mstore(to, 0x201) break
            }
        }
        (uint256) storage := uint256(to);
        storage.value += 1;
    }

    function () external payable {
        transferWithoutPayable();
        msg.data.someUint();
    }
}
