pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    uint public x;
    modifier greater_than_0_modifies_x() {
        require(x > 0);
        _;
    }
    function test() public payable greater_than_0_modifies_x {
       x = x+11;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public x;
    uint public y;
    uint public z;
    modifier greater_than_0() {
        require(y > 0);
        _;
    }
    function test() public payable greater_than_0 {
       x = x+11;
       x = x-9;
    }
}
contract contractWithoutFallback
{
    function callWithOutsideFallback() public returns(uint) {
       return x;
    }
    function callWithOutsideFallbackAndModifier() public z_greater_than_0 returns(uint) {
       return x;
    }
    function receiveWithInsideFallbackAndOutSideOfModifier() public z_greater_than_0 {
        x = x+1;
    }
    function receiveWithOutsideFallbackAndInsideOfModifier() public {
       x = x+1;
    }
}
contract contractWithFallbackAndReceive
{
    function callWithOutsideFallbackAndReceive() public payable returns(uint) {
       uint a = callWithOutsideFallbackReturningData();
       return uint(a);
    }
    function callWithOutsideFallbackAndReceiveAndModifier() public payable z_greater_than_0 {
        x = x+1;
    }

    function receiveWithOutsideFallbackAndReceiveAndModifier() public payable z_greater_than_0 {
       require(x > 0);
       x = x-9;
    }



    function callWithFallbackInReceive()
    internal
    pure
    returns (uint)
    {
        return x;
    }
}
contract contractWithFallbackAndReceiveAndReceiveInFunction
{
    function test() public payable z_greater_than_0 {
        x = x+1;
        x = x-9;
        address aAddress = msg.sender;
        aAddress.transfer(1);
    }
}
contract EtherFallback
{
    function () public payable {}
}
