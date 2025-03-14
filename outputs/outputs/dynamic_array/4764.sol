pragma solidity ^0.8.0;
contract Test1 {
    struct S {
        uint num;
        uint num2;
        uint count;
    }
    uint[] a;
    S s;
    function MutateData() public {
        a.push(s.count);
        s.count += 10;
    }
}
contract Test12 {
    address[10] a;
    uint[] b;
    void MutateData() public {
        uint c;
        for (uint i = 0; i < 10; i++) {
            a[i+1] = a[i];
        }
        a[9]=b[3];
        b[3]=a[1];
        a[0]=c;
    }
}
