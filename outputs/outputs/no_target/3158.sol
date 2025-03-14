pragma solidity ^0.8.0;
contract mut{
    uint x = 0;
    uint r;
    bool is_new;
    function mut() public {
        if(is_new){
            x = 2;
            is_new = false;
        }
        r += x - x;
        x = 2;
        is_new = true;
    }
    function b() public {
        mut();
        x = 2;
        x += 2;
        x = 2;
        r += x;
    }
    function d() public {
        b();
    }
}
contract mut2{
    uint x = 0;
    uint c;
    uint b;
    function mut() public {
        c = 1;
        b = 2;
        mut();
        x = 2;
    }
    function mut2() public {
        x = 2;
        x += 2;
    }
    function b() public {
        c = 1;
        mut2();
    }
    function d() public {
        b();
    }
}
