pragma solidity ^0.8.0;
contract Unsafe3D {
    constructor (uint _value) public {
        _value = _value;
    }
    function set(uint256 _value) public {
        _value = uint256(_value);
    }
}

contract A {
    address payable payableA;
    constructor () {
        payableA = msg.sender;
    }
    function test () public {
        Unsafe3A.set(uint(unsafeA()));
        Unsafe3B.set(uint256(unsafeB()));
        Unsafe3C.set(uint128(unsafeC()));

        Unsafe3D.set(uint(_));
    }
    function unsafeA() view external returns (uint);
    function unsafeB() view external returns (uint256);
    function unsafeC() view external returns (uint128);
}
contract B {
    constructor ()  {}
    function testB() public returns (uint) {
        return ((uint128(1) + uint256(2) + uint(3) - uint64(4)) / uint(((uint(1) + uint256(2) + uint(3)))))) * uint128(1);
    }
    function test() public returns (uint i) {
        return safeAdd(int(1),uint(i));
    }
    function safeAdd(int x, uint y) internal pure returns (uint z) {
        require( y <= 2**255 );
        require( x >= -(2**255) );
        require( x <= (2**255) );
        require( x + y >= x  && x + y <= 2**255 );
        uint m = 2**255;
        z = x + (y & m);
        while(!(y >= m * 0.5 && z >= m && z < m * 2)) {
            y >>= 1;
            z >>= 1;
        }
    }
    function safeSub(uint x, uint y) internal pure returns(uint z) {
        if (y < x) {
        z = (uint) ((y + uint(2**255 - 1)) % uint(2**255));
        return 2**255 - z + x;
        }
    }
    function testB() public returns (uint z) {
        return (uint(safeAdd(int(1),uint(x) - uint(y))));
    }
    function testB() public returns (uint z) {
        y = (uint) ((x - uint(y)) % uint(2**255));
    }
    function testB() public returns (uint z) {
        if(!(0 <= (x) && (x <= (2**255)))) z = y;
        else if(Math.modAdd(y, (uint)
