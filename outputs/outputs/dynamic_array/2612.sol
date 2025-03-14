pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations_mod2{
    uint[] a;
    modifier mod1 {
        a[1]+=1;
        a[2]+=1;
        a[3]+=1;
        a[4]+=1;
        _;
    }
    modifier mod2(uint y) {
        a[1]+=y;
        a[2]+=y;
        a[3]+=y;
        a[4]+=y;
        _;
    }
    modifier mod3(uint z) {
        a[1]+=z;
        a[2]+=z;
        a[3]+=z;
        a[4]+=z;
        _;
    }
    constructor () public {
        a[1]+=1;
        a[2]+=1;
        a[3]+=1;
        a[4]+=1;
    }
    function test() public {}
}



pragma solidity ^0.8.0;

/*
    Copyright 2018 Set Labs Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http:

    Unless required by applicable law or agreed to
