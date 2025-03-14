pragma solidity ^0.8.0;
contract Test2 {
    uint x;
    constructor() {
        x = 6;
    }
    uint public b;
    function setB() public {
        b = x;
    }
}

pragma solidity ^0.8.0;
contract Mutate {
    function set() public {
        EquivalentQ6 memory x;
        x.sub();
        Test2 memory y;
        y.setB();
        AssertLibrary.equal(y.b,x.x);
        SetLibrary.add(uint[1][1][1](),uint[1][1][1]());
        SetLibrary.add(uint[1][1][1](),uint[1][1][1](1,1));
        SetLibrary.remove(uint[1][1][1]());
        SetLibrary.remove(uint[1][1][1](0,0));
        SetLibrary.pop(uint[1][1][1]());
        SetLibrary.push(uint[1][1][1](),uint[1][1][1](1,1));
        Test2 memory temp;

    }
}
pragma solidity ^0.8.0;
import "https://raw.githubusercontent.com/jenarvaezg/eth_scrapper/master/solidity_unittest/Etherbase.json";
abstract contract Etherbase is EtherbaseDetailed {}
