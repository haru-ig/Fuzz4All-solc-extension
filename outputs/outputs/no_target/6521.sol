pragma solidity ^0.8.0;
contract myContractAB is modifierB{
    constructor() public{
    }
    function g() public pure returns(address a){
        return address(42);
    }
    function h() public pure payable{
        return;
    }
    function i() public pure returns(uint,bool,address,uint256,uint160,address a){
        (,bool,address,uint256,uint160,address) memory test1 = (false,true,address(1),0,1,address(1));
        (,bool,address,uint256,uint160,address) memory test2 = (false,false,address(2),1,2,address(2));
        (,bool,address,uint256,uint160,address) memory test3 = (true,true,address(3),3,3,address(3));
        a=address(42);
        assert(test1.x+test3.x==22);
        assert(test2.x+test2.x==18);
        return (0,test2.x,test3.x,test3.x,0,0);
    }
}


pragma solidity ^0.8.0;
contract myContractABCD{
    function f() public pure returns(uint,uint,uint,uint){
        uint x;
        x = 0;
        return (x,x/256,x*x,x*x/256);
    }
}
contract myContractABC{
}
contract myContractF{
    function h() public pure returns(uint,uint,uint,uint){
        uint x;
        x = 1;
        return (x,x/256,x*x,x*x/256);
    }
}
contract myContractG{
    function h() public pure returns(uint,uint,uint,uint){
        uint x;
        x = 2;
        return (x,x/256,x*x,x*x/256);
    }
}
