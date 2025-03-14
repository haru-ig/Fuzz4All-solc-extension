pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample71 {
    uint public base = 10;
    uint public base2 = 2;
    uint public base3;
    address public ownerAddress;
    function owner() public {
        ownerAddress = msg.sender;
    }

    function setBase() public {

        base = now;

        base2 = base;

        base3 = msg.sender;
    }
    fallback() public payable {
        uint b;
        uint c;
        assembly{
            b := 1
            c := 2
        }
        c -= 1;
        c = c + 1;
        ownerAddress = msg.sender;
        b = b + 1;
        b = b + c;
        c -= b;
        uint x = 1;
        x = c;
        uint y = c + 1;
        uint z = 1;
        z = 0;
        z = c;
        uint yx = 1;
        yx = c;
        uint yz = 1;
        yz = c;
        uint yy = 1;
        yy = 0;
        yy = c + 1;
        yy = c;
    }
}
