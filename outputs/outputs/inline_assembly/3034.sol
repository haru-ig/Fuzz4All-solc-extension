pragma solidity ^0.8.0;
contract C {
    bytes32 x = '0x444444';
    address y;
    uint public k;
    uint public l;
    bool public xIsUpdated;
    uint public yIsUpdated;
    function setX(uint _x) public {
        bytes32 oldX = x;
        uint n = uint(_x);
        if (uint(oldX)!= n) {
            x = n;
            xIsUpdated = true;
        }
    }
    function resetX() public {
        x = bytes32('0x0');
    }
    function setY(address _y) public {
        address preexistingY = y;

        address oldY = y;
        y = _y;
        yIsUpdated = true;
        emit SetAddress(preexistingY, oldY);
    }
    function resetY() public {
        y = address(0xdeadbadaddadd22222222222221111);
    }
    function f() public {
        if (xIsUpdated)
            k = k + getX();
    }
    function s1() public {
        if (yIsUpdated)
        {
            if (y == maliciousAddress)
            {
                getX();
            }
        }
    }
    function s2() public returns (address address2) {
        if (yIsUpdated)
        {
            bytes memory xBytes = bytes(x);
            if (xIsUpdated)
                k = k + bytes32(uint(xBytes) + (uint(y) > address(0xdeadbadaddadd222222222222221111) && address(0x0) == address(0xffffffffffffffff)));
        }
        bytes memory xBytes = bytes(x);
        uint bytesAsUint = uint(bytesAsUint);
        address2 = address(uint(xBytes) + (uint(y) > address(0xdeadbadaddadd22222222222221111) || (xBytes < bytesAsUint && uint(y) >= address(0xffffffffffffffff) || (xBytes > bytesAsUint && uint(y) <= address(0xffffffffffffffff))))) ^ address(uint(yIsUpdated) ^ uint(address(this))));
    }
    function s3() public {
        setX(k + getX());
        setY(address(0));
    }
    function g() public {
        if (yIsUpdated)
            k = k + get
