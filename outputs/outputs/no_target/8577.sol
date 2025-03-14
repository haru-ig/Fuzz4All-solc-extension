pragma solidity ^0.8.0;
contract New {
function modify(contract Old old) public view returns (uint) {
        old.get();
        return old.get(1, 100);
    }
}
contract Mutant {
    function get(uint a, uint b) public view returns (uint) {
        return (1 * 10) + (b);
    }
}
contract Mutant2 is Mutant {
    function getOld(uint a, uint b) public view returns (uint) {
        return (1 * 10) + (b);
    }
}
contract Mutant3 is Mutant {
    function getOld(uint a, uint b) public view returns (uint) {
        return (1 * 10) + b;
    }
}
contract Mutant4 is Mutant {
    function getOld(uint a, uint b) public view returns (uint) {
        return b + 1;
    }
}
contract Mutant5 is Mutant2, Mutant3, Mutant4 {
    function getOld(uint a, uint b) public view returns (uint) {
        return a * 10e16 + b;
    }
}
contract Mutant6 is Mutant3 {
    function getOld(uint a, uint b) public view returns (uint) {
        return a * 10e16 + b;
    }
}
contract Mutant7 is Mutant3 {
    function getOld(uint a, uint b) public view returns (uint) {
        return 10e18 + b;
    }
}
contract Mutant8 is Mutant4 {
    function getOld(uint a, uint b) public view returns (uint) {
        return 10e16 + b;
    }
}
