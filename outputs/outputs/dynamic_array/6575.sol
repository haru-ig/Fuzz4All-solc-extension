pragma solidity ^0.8.0;
contract T9FS_mut {
    uint i[];
    uint i1[];
    uint i4[];
    address a[];
    address a1[];
}
contract T9FS_init {
    uint i;
    uint i1;
    uint i4;
    bool initialized;

    constructor() public {
        i = 1;
        i1 = 1;
        i4 = 1;
        initialized = false;
    }

}
contract T9FS_setArrayInit {
    uint i;
    uint i1;
    uint i4;
    uint i[];
    bool initialized;

    constructor() public {
        i = [1, 3, 99, 100];
        i1 = [2, 21, 200, 2000];
        i4 = [4, 5, 6, 7, 1000];
        initialized = false;
    }
}
contract TestMutability {
    T9ES_mut x;

    constructor() public {
        x = new T9ES_mut();
    }



    function f0(address a) internal returns (uint[] memory) {
        T9FS_mut x1 = new T9FS_mut();
        uint[] memory y = x1.f1();
        bytes memory x = abi.encode(a);
        (bool success, bytes memory res) = x1.f2(x);
        uint val = 0;
        uint i;
        assembly {

            let i := 0
            for (i; i < 10; i := add(i,1)) {
                if (eq(mload(add(x, add(i, 200))), 0, 32)) { val := i }
            }
        }
        if (res[val] == 0) {
            return  [i][];
        } else {
            return  [][];
        }
    }


    function f1(uint []memory x) internal returns
