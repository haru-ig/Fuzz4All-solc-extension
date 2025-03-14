pragma solidity ^0.8.0;
contract NeutralChanges {
    uint8 x;

    address payable addr;

    function f() public {
        x = 1;
        addr = payable(0xFfFfFfFfFfFfFfFfFfFfFfFFfff);
    }
}

pragma solidity ^0.8.0;
contract PreviousChanges {
    uint8 x;

    address payable addr;

    address public foo = address(0);

    function f() public {
        foo = address(0x01FF0000);
        x = 1;
        if(msg.sender == addr) {
            bytes memory b = hex"FffFfFfFfFFFfFffF";
            x = array_to(uint8[](b)).length;
            foo = (bytes32(uint256(uint160(foo))) * (uint32(1))) + (uint32(1)) + 1;
        } else {
            uint8[2] memory a = uint8[](2);
            (a[0], a[1]) = uint8[2](5, 7);
            x = a[0];
        }
        addr = payable(0xFfFfFfFfFfFfFfFffF);
    }
}
