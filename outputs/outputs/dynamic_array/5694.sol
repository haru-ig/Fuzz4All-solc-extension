pragma solidity ^0.8.0;
contract Test78 {
    uint[5] internal _arr;
    function modify() public {
        _arr.push(uint(0));
    }
}
contract Test79 {
    uint[5] internal _arr;
    function modify() public {
        _arr[3] += 1;
    }
}
contract Test80 {
    uint[5] internal _arr;
    function modify() public {
        _arr.push(uint(0));
        _arr[3] += 1;
    }
}
contract Test81 {
    uint[5] internal _arr;
    function modify() public {
        uint[5] memory a;
        address payable payee;
        address payee1;
        a[0] = uint(0);
        a.push(uint(0));
        payee = payee1;
        a.pop();
        a[0]++;
        a[3]++;
        a[3] += 1;
        a[3] -= 2;
        a += a;
        a.push(uint(1));
        a.pop();
        a[4] += a[0] + 1;
        a.push(uint(1));
        a.pop();
        a++;
        a.push(uint(0));
        a[0]++;
        a[0]++;
        a.push(uint(1));
        a[0]--;
        a.pop();
        a.push(uint(1));
        a[0] -= a[4];
        a.push(uint(1));
        a.pop();
    }
}
contract Test82 {
    bool[] internal arr;
    for (uint h = 200; h < 210; h++) arr.push(false);
}
contract Test83 {
    bool[20] internal arr;
    constructor() {
        for (uint h = 200; h < 210; h++) arr.push(false);
    }
}
contract Test84 {
    bool[20000] internal arr;
}
contract Test85 {
    bool[40] internal arr;
    uint[] memory a;
}
contract Test86 {
    uint[] internal arr;
    for (uint i = 0; i < arr.length
