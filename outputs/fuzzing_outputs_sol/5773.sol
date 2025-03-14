pragma solidity ^0.8.0;
contract semanticallyequivalent32
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_100() {
        require(z<100);
        _;
    }
    constructor(uint _z) public{
          z__ = _z;
    }
    function test32() public payable z_less_than_100{
        while (z__ < 10) {
            z++;
         }
        y = 5;
    }
}

pragma solidity ^0.8.0;
contract Caller
{
    uint public z2__ = 0;
    modifier z_less_than_100() {
        require(z2__ < 100);
        _;
    }
    constructor() public{z2__ = 100;}
    function test33() public payable z_less_than_100{
    }
    function test34() public {
    }
}

pragma solidity ^0.8.0;
contract Caller2
{
    uint public z2__ = 100;
    modifier z_less_than_100() {
        require(z2__ < 100);
        _;
    }
    constructor(uint _z) public{z2__ = _z;}
    function test35() public payable z_less_than_100{
    }
    function test36() public {
    }
}
contract Basic {
    address public test__;
    modifier test_equal_0x00e50d35eb726953e6bE94f4cCdb936556e0c344() {
        require(test__ == address(0x00e50d35eb726953e6bE94f4cCdb936556e0c344));
        _;
    }
    constructor (address _test_) {
        test__ = _test_;
    }
    function test() public test_equal_0x00e50d35eb726953e6bE94f4cCdb936556e0c344
    {
        return test_;
    }
}
contract Base {
    address public test__;
    uint public z__;
    modifier test_equal_0x546e616d65() {
        require(test__ == address
