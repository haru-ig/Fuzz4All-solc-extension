pragma solidity ^0.8.0;
contract Modul {
    uint s;
    function x() public{
        asm{
                mul(0x001,_a)
                sub(0x001,_a)
                div(_a,0x001)
                switch _s(0x001,_a)
                div(_a,0x002)

                mul(_a,0x003)
                div(_a,0x003)
                sub(_a,0x003)
                mul(_a,0x004)
                add(_s,0x005)

                div(_a,0x003)

                div(0x0010,_a)

                swap(0x001,_a)
                div(0x0010,_a)
                swap(_a,0x001)
             div(0x10, _s)
                div(  _a, 0x15)
            div(_a,0x16)
            div( _a, 0x1c)
               div(0x1b,_a)
            div_(_a,0x1f,0x19)
            div(0x1d,_a,0x15,0x10)
            end
        }
    }
}

```
