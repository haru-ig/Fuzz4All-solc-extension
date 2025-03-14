pragma solidity ^0.8.0;
contract MovedSemanticsMutants {
    uint a;
    uint b;
    uint c;
    address d;
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        a = 2;
        b = b+1;
        if(a >= 3 || b <= 2){
            c = 2;
            a = a+1;
        }
        if(d!= address(0)){
            d = d;
        }
    }
}
contract Caller{
    address d;
    function do_something() returns(address){
        return address(this);
    }
    function call_other() public {
        delete d;
        d = do_something();
    }
    function test() public {
        d = do_something();
    }
}
contract CallerMutants {
    address d;
    function do_something() returns(address){
        return address(this);
    }
    function call_other() public {
        delete d;
        d = do_something();
    }
    function test() public {
        a = 3;
        b = 2;
        c = 1;
        d = address(0);
        a = 2;
        b = b+1;
        if(a >= 3 || b <= 2){
            c = 2;
            a = a+1;
        }
        if(d!= address(0)){
            d = d;
        }
    }
}
