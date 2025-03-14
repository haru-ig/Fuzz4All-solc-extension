pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations14_mod2
{
    uint32 private constval32=1001;
    constructor () public
        {
        a.push(constval32);
        a[1]=constval32;
        a[999]=constval32;
        a.push(constval32);
        a[0]=constval32;
        a[1]=constval32;
        a=new uint[](1);
        a[1]=0;
        a[2]=0;
        a[0]=0;
        a[2]=0;
        a.push(constval32);
        a.push(constval32);
        a[1]=constval32;
        a.push(constval32);
        a.push(constval32);
        a.push(constval32);
        a.push(constval32);
        a.push(constval32);
        a[500]=constval32;
        a.push(0,0);
        a[a.length]=0;
        a[a.length-1]=0;
        a.push(constval32);
    }
}
