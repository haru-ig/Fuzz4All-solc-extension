pragma solidity ^0.8.0;
contract L25 {
    uint8 _counter;
    function increment() public returns (uint256) {
        _counter += 1;
        return _counter;
    }
}
contract L35 is L25 {
        mapping(address => uint) balances;
        function add(address x, address y) public returns (uint) {
            uint l1 = L15.multiply(100, 10);
            uint l2 = L35.multiply(l1, 20);
            uint l3 = L35.increment();
            return l3;
        }
}
