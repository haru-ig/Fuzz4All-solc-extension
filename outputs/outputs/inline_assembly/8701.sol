pragma solidity ^0.8.0;
contract Modul {
    address private addrA;
    address private addrB;
    uint private x;
    function A() public {

            addrA = addrB;
            if (true) {
                return ;
            }


    }
    function B() public {

            addrA = addrB;
            addrB = addrA;
            addrB += 24;
            printHex("A", addrA);
            printHex("B", addrB);
            while (x < 100) {
                printHex("X", x);
                printHex("X", x+x);
                x++;
            }
            while (x > 10) {
                printHex("X", x--);
            }
            printHex("X", x--);
            uint x_ = x+1;
            addrA = addrB;
            printHex("X", x_);
            addrA += 5;
    }
    function getA() public view returns (address) {
            return addrA;
    }
    function getB() public view returns (address) {
            return addrB;
    }
    function printHex(string memory label, uint value) private {
            print("Label: "+label+": ");
            print(uint2hex(value));
    }
    uint public constant hex0 = 60;
    function uint2hex(uint value) private pure returns(string memory) {
            if (value == 0) return "0x000000000000000000000000000000000000000000000000000000000000000";

            string memory prefix = "0x";
            string memory buffer = bytes(uint2dec(uint8(value))).padStart(32, '0');
            if (value!= ((uint)(1) << (32-buffer.length)))) {
                    buffer = "00" + buffer;
            }
            return prefix + buffer;
    }

    function uint8(uint memory x) private pure returns(uint) {
            return (uint)(bytes32(x).toUint());
    }
    function uint2dec(uint8 x)
