pragma solidity ^0.8.0;
contract Test2 {
    uint8[] a;
    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        a.length = 7;
    }
}

pragma solidity ^0.8.0;
contract Test3 {
    uint8[] a;
    function MutateData() public {
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        a.push(10);
        a.push(100);
        a.push(200);
        a.length = 23;
    }
}
