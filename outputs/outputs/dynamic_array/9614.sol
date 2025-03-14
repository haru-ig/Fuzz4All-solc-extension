pragma solidity ^0.8.0;
 contract Main {
    contract A {
        function f(uint256) public pure returns (uint256) {
            return 5;
        }
    }
    struct B {
        uint x;
    }
    struct C {
        uint[] z;
        A a;
    }
    struct AB {
        B x;
        bytes b;
    }
    struct CD {
        C y;
    }
    uint256 calldata[] = [1, 11_000, 111_000, 1111_000];
    uint8 a;
    void f() public {
        a = 1;
        C memory pc = C({
            y: C({
                z: [1, 2, 3],
                a: A()
            })
        });
    }
    function g() public {
        C memory pc = A();
    }
}
