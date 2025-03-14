pragma solidity ^0.8.0;
contract A {
    uint[] data2;
    uint m(uint[1]) public {
        data2.push(1);
        data2.pop();
    }
}
pragma solidity ^0.8.0;
contract B {
    uint [] data2;
    uint m(uint [1]) public {
        data2.push(1);
        data2.pop();
    }
}
pragma solidity ^0.8.0;
contract C {
    uint [] data;
    uint[1] data2;
    uint m(uint[1]) public {
        data2 = data;
        data.push(1);
        data.pop();
    }
}
pragma solidity ^0.8.0;
contract D {
    uint [1] data2;
    uint m(uint[1]) public {
        data2 = data2;
        data2.push(1);
        data2.pop();
    }
}
pragma solidity ^0.8.0;
contract E {
    uint [1] data;
    uint m(uint[1]) public {
        data.push(1);
        data.pop();
    }
}
pragma solidity ^0.8.0;
contract F {
    uint [1] data2;
    uint[1] data;
    uint m(uint[1]) public {
        data2.push(1);
        data.push(1);
        data2.pop();
        data.pop();
    }
}




function C() {
    uint a = 1;
    uint x = 3;
    C d;
    d = new A;
    address a0;
    d = new C;
