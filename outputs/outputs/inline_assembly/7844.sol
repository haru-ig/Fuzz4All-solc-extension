pragma solidity ^0.8.0;
contract L24{
    constructor() public {
        address c = 0xCFf8E8a5CB9A9111CEd7362B496bE92D32Ca804F;
        bytes memory a = abi.encodePacked("A", address(this));
        bytes32 b = "A";
        bytes4 e = byte32ToUint4(0x00);
        bytes4 f = bytes32ToUint4(0x0f);

        assembly {
        let memoryPointer := mload(0x40)
        mstore(memoryPointer, a)
        mstore(add(memoryPointer, 32), b)
        mstore(add(memoryPointer, 64), e)
        mstore(add(memoryPointer, 96), f)
        calldatacopy(memoryPointer, 352)
        returndatacopy(352, 512)
    }
    }
}

pragma solidity ^0.8.0;
contract L25{
    constructor() public {
        address a = address(new L25());
        bytes memory a = abi.encodePacked("a");
        bytes memory b = abi.encodePacked("b");

        assembly {
            returndatacopy(353, 512)

            let pointer := mload(0x40)
        }

        c = L13(pointer, 511);

        assembly {
            mstore(add(pointer, 8), a)
            mstore(add(pointer, 16), b)
        }

    }
    function L13(bytes memory _bytes) pure public returns(L13) {

        L13 memory a;

        assembly { a := mload(_bytes) }

        return a;
    }

    string c;
}
contract L26{    function L26(address _addr) public{ d = _addr; }
    function deposit(address _addr) public{ d = _addr; }
    function withdraw() public{
        address receiver = d;
        IERC20(_addr).transferFrom(msg.sender, receiver, uint256(250));

        uint256 balance = IERC20(_addr).balanceOf(msg.sender);
        uint256 limit = 250000;
        msg.sender.transfer(balance < limit? balance : limit);

    }
    address d;
}
contract L27{
    uint public constant _ZERO_ADDRESS = 0x
