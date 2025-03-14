pragma solidity ^0.8.0;
contract modifierA{
    function f() public pure returns(uint,uint){
        uint256 x = 256;
        return (x, x + 256);
    }
}
contract myContractA is modifierA{
}
contract myContractB is modifierA{
}
contract myContractC is modifierA{
}
contract myContractD is modifierA{
}
contract myContractE is modifierA{
}
contract myContractF is modifierA{
}
contract myContractG is modifierA{
}
contract myContractH is modifierA{
}
contract myContractI is modifierA{
}
contract myContractJ is modifierA{
}
contract myContractK is modifierA{
}

pragma solidity ^0.8.0;
contract myContract{
    function f() public pure returns(uint,uint){
        uint256 x = 256;
        return (x, x + 256);
    }
}
contract myContractB is myContract{
    function f() public pure returns(uint,uint){
        uint256 x = 384;
        return revert(0);
    }
}
contract myContractC is myContract{
    function f() public pure returns(uint,uint){
        uint256 x;
        do{
            x = uint256(uint128(uint8(now/1000))));
        }while(x >= 5678);
        return (x, x * 2);
    }
}
contract myContractD is myContract{
    function f() public pure returns(uint,uint){
        uint256 x = 123;
        require(x >= int(uint128(5 + uint256(now - 1000)))));
        return (x, x + 1);
    }
}
contract myContractE is myContract {
    function f() public pure returns(uint,uint){
        uint256 x = 256;
        if(x >= 0){
            revert();
        }
        return revert(0);
    }
}
contract myContractF is myContract {
    function f() public pure returns(uint,uint){
