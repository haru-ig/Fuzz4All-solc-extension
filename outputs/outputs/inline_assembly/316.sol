pragma solidity ^0.8.0;
contract F1 {
    uint a;
    function() public {
        a += a;
    }
    function add (uint a) public pure returns (uint){
        return (a ^ a);
    }
}
pragma solidity ^0.8.0;
contract F2 {
    uint a;
    function() public {
        a += a;
    }
}
contract A {
    address e;
    F2 f;
    constructor () {
        e = msg.sender;
        f = new F2();
    }
    function add_internal (uint a, uint b) public view returns (uint){
        return (msg.sender).balance;
    }
    function add (uint a, uint b) public view returns (uint){
        return (e).balance;
    }
}
contract B {
    uint a;
    function() public {
        a += a;
    }
}
contract Contractor {
    mapping(address => F1) map;
    constructor () {
        map[msg.sender] = new F1();
    }
    function add_internal (uint a, uint b) public view returns (uint){
        return (map[msg.sender]).add_internal(a, b);
    }
    function add (uint a, uint b) public view returns (uint){
        return (msg.sender).balance;
    }
}
pragma solidity ^0.8.0;
contract B2 {
    uint a[7];
    function mul (uint a, uint b) public view returns (uint){
        return (a * b);
    }
}
pragma solidity ^0.8.0;
contract B1 {
    uint a;
    function() public {
        a += a;
    }
}
pragma solidity ^0.8.0;
contract Contractor {
    mapping(address => B1) map;
    constructor () {
        map[msg.sender] = new B1();
    }
    function add_internal (uint a, uint b) public view returns (uint){
        return (a + map[msg.sender]).mul(a);
    }
    function add (uint a, uint b) public view returns (uint){
        return (map[msg.sender]).a + a + map[msg.sender].a;
    }
}
