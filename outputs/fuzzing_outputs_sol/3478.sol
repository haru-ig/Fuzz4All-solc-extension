pragma solidity ^0.8.0;
contract Simple {
    function a() public pure returns (bool) {
        return true;
    }
    function b() public pure returns (bool) {
        return false;
    }
    function c() public pure returns (bool) {
        return true;
    }
    function d() public pure returns (bool) {
        return false;
    }
}
contract Caller {
    function a() public {
        Simple s = new Simple();
        if ((bool(msg.value))) {
            uint x;
            (x,) = s.a();
            if (x == 0x1) {
                callWithEther();
            } else {
                callWithoutEther();
            }
        } else {
            uint x;
            (x,) = s.a();
            if (x == 0x1) {
                callWithEthWithoutValue();
            } else {
                callWithoutEthWithoutValue();
            }
        }
    }

    function callWithEther() public payable {
        uint x;
        (x,) = a();
    }

    function callWithoutEther() public {
        uint x;
        (x,) = a();
    }

    function callWithEthWithoutValue() public payable {
        uint x;
        (x,) = a();
    }

    function callWithoutEthWithoutValue() public {
        uint x;
        (x,) = a();
    }
}
