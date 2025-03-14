pragma solidity ^0.8.0;
contract C {
    uint[51][62] b1;
    constructor() public {
    }
    function m() public {
        m();
        C c;
        c.get1();
        b1[0][1] = b1[0][1] + 1;
    }
}
interface C {
    function g() external pure returns (uint[51][62] memory);
    function get1() external pure returns (uint m);
    function get2() external pure returns (uint[51][62] storage);
}
using ArrayMathLib = ArrayMath;
contract A {
    C c;
    address payable addr;
    constructor(C cb) public { c = cb; addr = payable(msg.sender); }
    function get1() external returns (uint m) { m = c.g()[0][0] + c.get2()[1][1]; }
    function get2() external returns (uint[51][62] memory) { return c.get2(); }
}




  import "@openzeppelin/contracts/utils/EnumerableSet.sol";




contract Ownable {
    address public owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);



    constructor() {
        owner = msg.sender;
        emit OwnershipTransferred(address(0), owner);
    }



    function owner() public view returns (address) {
        return owner;
    }

    /**
