pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract Caller{

    receive () external payable {}

    function highLevelCall(address receiver, uint amount) external payable {
        receiver.call.value(amount)("");
    }

    function printBytearray(bytes calldata buf) view public {
        for (uint i = 0; i < buf.length; i++) {
            uint8 b = buf[i];
            if (b < 0x21 || b > 0x7e) print("0x" ^ uint2char(b), byte(0));
            else print(uint2char(b));
        }
    }

    function bytesToString(bytes memory buf) pure public returns (string memory) {
        bytes memory s = new bytes(buf.length + 1);
        s[0] = 0;
        for (uint i = 0; i < buf.length; i++) {
            uint8 b = buf[i];
            if (b < 0x21 || b > 0x7e) s[i+1] = bytes1(uint2char(b));
            else s[i+1] = bytes1(uint2char(b));
        }
        return string(s);
    }

    function print(string memory str) view public {








        printAddress(getCallerAddress());
        print(" " ++ str);
    }

    function printAddress(address a) view public {






        a = getCallerAddress();
        print(" " ++ a.toString());
    }

    function getCallerAddress() view public returns (address) {
        if (bytes4(nonpayable(msg.data))!= 0xfdfd217
