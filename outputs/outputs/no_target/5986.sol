pragma solidity ^0.8.0;
contract MyContract {
    function add(bytes16[] memory, bytes16[] memory) public pure returns (bytes16[]) {
        return [new bytes16[](a)];
    }
}

pragma solidity ^0.8;
library B {

    string constant name = "B";
    uint public value = 50;

    function add (uint x) public pure returns (uint) {
        return x;
    }
}
pragma solidity ^0.6.0;
contract B {

    uint constant x = 100;

    function setX (uint x) public pure {
        B.name = "X";
        B.value = x;
    }
}
contract A {
    enum E { e0, e1, e2 };

    function (E e) public pure returns (E) {
        return e;
    }
    function (E e) public pure returns (E) {
        return e;
    }

    function returnTuple() public pure returns (bool, E) {
        return (false, E.e2);
    }
    function returnTuple2() public pure returns (bool) {
        return (false);
    }

    function throwNoReturn() public pure {
        throw;
    }
    function throwRuntimeError() public pure {
        assembly {
            let r := mload(0x40)
            returndatacopy(0, 0, 0x04)
            let exception := calldatacopy(0, 0, 0x20)
        }
    }



    function returnStruct() public {
        B storage b;



        b.x = B.get(E.e1);

        E e;
        (e, b.x) = B.getAndDestroy(E.e1);
        b.x = B.get(E.e1);
        B.getAndDestroy(E.e1);

        address a = new B.MyContract();
        bytes1 _bArr = B.get(bytes1[](12));
        b.x = B.getAndDestroy(bytes1[](12));
