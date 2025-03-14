pragma solidity ^0.8.0;
contract Test50 {

    bytes[4] private a;

    function f(bytes[4] memory) public payable {
        for (uint i = 0; i < 6; i++) {
            emit Log(i);
            a[i] = bytes(i);
        }
    }

    function Log(uint i) public pure {

        (uint _index, bytes memory _x) = get(a, i);
    }


    function get(bytes[4] memory a, uint i) internal pure returns(uint, bytes memory) {
        return (uint(i), a[i]);
    }
}
