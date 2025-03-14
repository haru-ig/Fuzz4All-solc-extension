pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations18_mod2{
    uint[] a;
    constructor () public {
        a.push(0);
        a.push(1);
        a.push(2);
        a[1]+=1;
        a[2]+=1;
        a.pop();
    }
    function test() public {

    }
}

pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations19_mod2{
    uint[] __a;
    uint __i;
    constructor () public {
        __a="";
        __a[0];
        __a[0]=10;
        __a[0]=__i+10;
        __a[1]=20;
        __a[1]=__i;
        __a[2]='';
        __a[2]=__i+10;
        __a[2]=__a[__i]+10;
    }
    function test() public {

    }
}
