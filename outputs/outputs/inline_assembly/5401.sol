pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Qc {
    uint constant Init = 17;
    uint _rBc;
    uint internal rBc2;
    function updateRBc(uint r) public{
        require(init == 1, 'You are not authorized');
        if (init == 1) {
            rBc2 = r;
        } else {
            require(r > rBc2, 'The new rBc is less than the current rBc');
            rBc2+=r;
            _rBc = rBc2;
        }
    }
    uint public init;
    constructor () public {
        rBc2 = Init + 17;
        init = 1;
        for (uint x = 0; x < 10000; x++) {
            uint rBc;
            _rBc = rBc + Init + 17;
        }
    }
}
```

```
$ geth console -a -c 1 --solidity 0.8.0 --optimize --accounts=3
3:0x140811e829e9592dbcf384a58f2a25d7d
3:0x140809729f05821d773a11c0e4f222bc

> contract (test, Qc) { Rbc initialRbc=17;  uint rbcFromContract;
>
> function use(uint r) public {
>     require(r>=initialRbc, 'r is lower than initial rbc');
>     initialRbc-=r;
>     rbcFromContract+=r;
>     uint rBc;
>     _rBc=19;
> }
>
>
>
> uint public initialRbc;
> uint internal rbcFromContract;
> }

> qc.updateRBc(initialRbc);
3:0x14081b879e208e511fb231f1e6f2a3cc
3:0x1408
