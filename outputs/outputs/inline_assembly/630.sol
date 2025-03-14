pragma solidity ^0.8.0;
contract MutatorInContract {

    Mutator m;
    AnotherMutator anotherMutator;

    mapping(bytes32 => bytes) s;

    uint indexed i;

    constructor (uint _i) {
        i = _i;
    }

    function getI() public pure returns (uint) {
        return(i);
    }

    function test() public view {
        emit(i);
    }

    function testMutator() public {
        m.testMethod();
    }

    function testAnotherMutator() public {
        anotherMutator.testMethod();
    }

    function testInteriorMutator() public {
        InteriorMutator im;
        im.testMethod();
    }


    function checkMutator() public view returns (uint) {
        emit(m.getI());
        return (getI());
    }


    function checkAnotherMutator() public view returns (uint) {
        emit(anotherMutator.getI());
        return (getI());
    }


    function checkInteriorMutator() public view returns (uint) {
        emit(m.getI());
        emit(anotherMutator.getI());
        return (getI());
    }
}

contract MutatorProxy is MutatorInContract {

    function () public payable {
        check();
    }

    function check() public {
        uint a = MutatorInContract.checkMutator.value(msg.value)(i);
        uint b = MutatorInContract.checkAnotherMutator.value(msg.value)(i);
        uint c = MutatorInContract.checkInteriorMutator.value(msg.value)(i);
        if (a!= 0 && b!= 0 && c!=2) {
            uint _x = a;
            checkMutator();
            require(_x == 2);
        }
    }
}

interface MutatorInterfaceI {
    function testMethod();

    function testMutator() view returns (uint);

    function testAnotherMutator() view returns (uint);

    function testInteriorMutator() view returns (uint);

    function getI() view returns (uint);
}

contract MutatorInterface is MutatorInterfaceI {
    function testMethod() public pure {
    }

    function testMutator() view returns (uint) {
        return (1);
    }

    function testAnotherMutator() view returns (uint) {
        return (2);
    }

    function testInteriorMutator() view returns (uint) {
        return (3);
    }

    function getI() view returns (uint) {
        return(4);
    }
}
