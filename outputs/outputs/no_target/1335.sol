pragma solidity ^0.8.0;
contract Mutate_0005 {
    uint[1] public a;
    function set() public view returns(uint) {
        return a;
    }
    function set() public {
        a = a.add(1);
    }
    bool public b;
    function returnTrue() public view returns(bool){
        return b;
    }
    function returnFalse() public view returns(bool){
        return!b;
    }

    uint public i;
    uint public x;
    function mul() public {
        i = i * 2;
        require(i >= 0);
    }
    function mul() public view returns(uint){
        uint[] memory b = x.mul(uint(-1));
        return x.add(1);
    }

    function div() public {
        uint[] memory b = x.div(uint(1));
        uint m = uint(1).divide(uint(2));
        require(x == m);
    }
    uint[][] y;
    function append() public view {
        y = y.concat(x).concat(y);
    }
    function append() public {

        y.push(x);
    }
    mapping(uint => uint) m;

    function getLength(uint) public returns (uint){
        return x.length();
    }
    uint public y;
    function modify(uint) public {
        y--;
    }
}
