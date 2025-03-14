pragma solidity ^0.8.0;
contract T9ES_mod_mod {
    function f() public {
        T9ES_mod.i = -1;
        T9ES_mod.i6 = -1;
        T9ES_mod.i9 = -1;
        T9ES_mod.i14 = -1;
        T9ES_mod.i19 = -1;
        T9ES_mod.i24 = -1;
        T9ES_mod.i29 = -1;
        T9ES_mod.i34 = -1;
        T9ES_mod.i40 = -1;
        T9ES_mod.i46 = -1;
        T9ES_mod.i53 = -1;
        T9ES_mod.i60 = -1;
        T9ES_mod.i67 = -1;
        T9ES_mod.i74 = -1;
        T9ES_mod.a = address(new T9ES_mod(uint256(0)));
        T9ES_mod.a1 = address(new T9ES_mod(uint256(0)));
        T9ES_mod.a4 = address(new T9ES_mod(uint256(0)));
        T9ES_mod.a6 = address(new T9ES_mod(uint256(0)));
    }

    function g() public {

        T9ES_mod.a.call{ gas: 10000 }("");
        T9ES_mod.a1.call{ gas: 10000 }("");
        T9ES_mod.a4.call{ gas: 10000 }("");
        T9ES_mod.a6.call{ gas: 10000 }("");

        T9ES_mod.a.call(bytes(0));
        T9ES_mod.a1.call(bytes(0));
        T9ES_mod.a4.call(bytes(0));
        T9ES_mod.a6.call(bytes(0));
        /* Call from state storage and
