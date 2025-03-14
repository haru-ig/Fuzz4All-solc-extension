pragma solidity ^0.8.0;
contract Mutated {
    constructor(uint m) { m = m; }
    uint private m;

    uint x = 0;
    event B(uint e, uint m);

    modifier before {
        before = true;
        x = x + 1;
        emit B(m, x);
        require(m == 1);
        require(!before);
        unchecked before {
            (x = x + 2);
        }
        if(m == 2) {
            unchecked before {
                x = x + 3;
            }
        }
    }

    function bar() public before {
        m = 0;
    }
}





pragma solidity ^0.8.0;
contract Mutated4b {
    uint x = 20;
    struct T1 {
        uint z;
        T1(uint m) {
            z = z + 30 * m;
        }
    }
    struct T2 {
        uint z;
    }
    uint private m;
    constructor(uint m) {
        x = 100 * m;
    }
    modifier before {
        before = true;
        x = x + 1;
        emit B(m, x);
        if(m == 2 || m == 3) {
            require(false);
        }
        if(m == 1 || m == 4 || m == 5) {
            unchecked before {
                (x = x + 2);
            }
            after {
                x = 200;
            }
        }
        if(m == 1 || m == 2 || m == 3 || m == 4 || m == 5) {
            unchecked before {
                (x = x + 3);
            }
            after {
                x = 300;
            }
        }
        if(m == 1 || m == 2) {
            unchecked before {
                (x = x + 4);
            }
            if(m == 3 || m == 4) {
                unchecked before {
                    (x = x + 5);
                }
            }
        }
    }
    function bar(uint k) public before {
        x = 200 * k;
    }
    function bar1(uint k) public before {
        x = 500;
        return k + 1024;
    }
    function bar2
