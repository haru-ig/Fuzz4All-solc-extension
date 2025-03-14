pragma solidity ^0.8.0;
contract L20 {
    struct B {
        uint a;
        uint b;
    }
    B storage b{0x0, 0x0};
    uint public constant i = 0xA;
    void set(uint256 a,uint256 b) public {
        b.a = a;
        b.b = b;
        assembly {
            set(0x0,42)
        }
    }
    uint get() public pure returns (uint) {
        return b.a;
    }
    uint geti() public pure returns (uint) {
        return i;
    }
}

```

</div>

# A) Example of incorrect and dangerous coding

<div markdown="1" class="alert alert-info">

```shell
import "./04.solidity.inlineassembly/SolidityInlineAssembly-wrong/L20.sol";
contract L1 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
    enum T { E
    }
}
contract L1 {
    struct B {
        uint a;
        uint b;
    }
    B storage b;
    uint public constant i = 0xA;
    void Set(uint256 a,uint256 b) public {
        b = B(a, b);
        assembly {
            set(0x0,42)
        }
    }
    uint public get() public view returns(uint) {
        return b.a;
    }
}
```

</div>

<div markdown="1" class="alert alert-info">

```shell
pragma solidity ^0.8.0;
contract L20 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
    enum T { E
    }
}
contract L20 {
    struct B {
        uint a;
        uint b;
    }
    B storage b{0x0, 0x0};
    uint public constant i = 0xA;
    void set(uint256 a,uint256 b) public {
        b.a = a;
        b.b = b;
        assembly {
            set(0x0,42)
        }
