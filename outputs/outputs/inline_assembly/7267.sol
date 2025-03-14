pragma solidity ^0.8.0;
contract Contract {
    mapping(uint => bool) public myBool;
    function addBool(uint id, bool newVal) public {
        myBool[id] = newVal;
    }
    function getBool(uint id) public view returns (bool) {
        return myBool[id];
    }
}
contract Comp {
    function f(bool a) public {
        if(a) {
            Contract(myContract).addBool(1,true);
            Contract(myContract).addBool(1,true);
        } else {
            Contract(myContract).getBool(1);
            Contract(myContract).getBool(1);
        }
    }
}

contract Comp2 {
    function g(bool a) internal returns (bool) {

        if(a) {
            Comp(myContract).f(true);
            Comp(myContract).f(true);
        } else {
            Comp(myContract).f(false);
            Comp(myContract).f(false);
        }
        return true;
    }
}
bytes[] memory codes = [
"60606040526000600060608201908152603910803590602089601419610a198082803590602089600190509190815260200191505062faad140000000000000000000000000000000000000000000000000000000000000900f3bb9c08000000000000000000000000000000000000000000000000000000000000009003590602080610006c98061002660606040526000357c01000000000000000000000000000000000000000000000000000000000910f3bb9c080000
