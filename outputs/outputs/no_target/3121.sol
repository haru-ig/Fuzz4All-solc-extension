pragma solidity ^0.8.0;
contract third{
    uint v;
    function test(uint x){
        v++ ;
        x++ ;
        x = (x * 2);
        x = (x + v) >> 1;
    }
}

pragma solidity ^0.8.0;
contract second{
    uint v;
    function test(uint x){
        -- v;
        -- v;
        -- v;
        -- v;
        x += v++ ;
    }
}

pragma solidity ^0.8.0;
contract first{
    uint v;
    function test(uint x){
        x++ ;
        uint y = -(x);
    }
}
