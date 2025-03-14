pragma solidity ^0.8.0;
 contract FallbackReceiver {
    fallback() external payable {
        require(true);
    }
}

pragma solidity ^0.8.0;
contract FallbackReceiver2 is Downgradeable, IReceivable {
    fallback() external payable {}
}
pragma solidity ^0.8.0;
contract CallReceiver {
    function receive() external {

        bytes memory data = bytes(abi.encode(address(new CallReceiver2)));
        assembly {
            let value := out(0x40)
            returndatacopy(0x40, 0, 32)
            return(add(0x40, mload(data)))
        }
    }
}
pragma solidity ^0.8.0;
contract CallReceiver2 is Downgradeable, IReceivable {
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract CallReceiver3 is Downgradeable, IReceivable {
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract ReceivableInterface {
    fallback() external payable {}
}
pragma solidity ^0.8.0;
interface IReceivable {
    function receive() external payable;
}
pragma solidity ^0.8.0;
interface IReceivable2 {

    function receive(uint256 value) external payable;
}
