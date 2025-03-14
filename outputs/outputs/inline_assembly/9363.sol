pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    address constant owner = 0x918E93421931385C61C7E7550cEe50fCF6D1F313;
    function h() public pure returns (int,uint) {
        return (d,r);
    }
    function transfer(address _to, uint _value) public {
        require(msg.sender == owner);
        _to.transfer(_value);
    }
}
