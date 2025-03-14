pragma solidity ^0.8.0;
contract Test4 {
    mapping (address => uint[]) b;
    address[] c;
    function MutateData() public {
        c.push(address(this));
    }
}
contract Test5 {
    mapping (address => uint[]) b;
    address a;
    function MutateData() public {
        b[a] = b[a] + [10];
    }
}
contract Test6 {
    mapping (address => uint[]) b;
    address a;
    function MutateData() internal {
        b[a].push(10);
    }
}
contract Test7 {
    mapping (address => uint[]) b;
    address a;
    function MutateData() public {
        var x = [address(this) + 1, address(this)];
        b[a] = add(x, b[a]);
    }
}
contract Test8 {
    mapping (address => uint[]) b;
    address a;
    function MutateData() public {
        b[a][3] = a;
    }
}
