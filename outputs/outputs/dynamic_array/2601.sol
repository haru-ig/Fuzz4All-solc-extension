pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations15_mod1{

    uint[] a;
    uint x;
    modifier y(uint x) {
        a[a.length]+=(x*x);
        x+=1;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        x+=2;
        for (uint i = 0;i<a.length;i++) {}
        x+=3;
        for (uint i = 0;i<a.length;i++) {
            x+=4;
        }
        x+=5;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        x+=6;
        for (uint i = 0;i<a.length;i++) {}
        x+=7;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        x+=8;
        for (uint i = 0;i<a.length;i++) {}
        x+=9;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        x+=10;
        for (uint i = 0;i<a.length;i++) {}
        x+=11;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        x+=12;
        for (uint i = 0;i<a.length;i++) {}
        x+=13;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        x+=14;
        for (uint i = 0;i<a.length;i++) {}
        x+=15;
        x+=20;
        x+=21;
        x+=22;
        x+=30;
        a.length+=10;
        x+=16;
        for (uint i = 0;i<a.length;i++) {}
        a[0]+=17;
        a[1]+=18;
        x+=23;
        for (uint i = 0;i<a.length;i++) {
            a[i]==0;
        }
        a[2
