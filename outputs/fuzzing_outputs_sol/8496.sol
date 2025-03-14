pragma solidity ^0.8.0;
contract CallerExample6 {
    function subtract(uint x, uint y) public {
        uint subtract1 = CallerExample5.subtract(x,y);
        uint subtract2 = CallerExample5.call.value(x.mul(2))(address(this), abi.encodeWithSignature("add(uint,uint)",x,y));
        uint subtract3 = CallerExample5.send.value(y.mul(1000))(address(this), abi.encodeWithSignature("call(address,bytes)",address(this),"0x"));
    }

    function add(uint x, uint y) public pure returns(uint) {
        revert("should not be reached");
        return x + y;
    }

    fallback() payable {}
}
